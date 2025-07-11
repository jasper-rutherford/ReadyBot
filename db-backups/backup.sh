#!/bin/bash
set -e

# you have to REALLY REALLY want to run this in prod
if [[ "$1" == "--prod" ]]; then
  DB_NAME="${POSTGRES_DB:?Must set POSTGRES_DB for production}"
  echo "⚠️  Running in PROD mode with DB=$DB_NAME"
else
  DB_NAME="testdb"
  echo "✅ Running in TEST mode with DB=$DB_NAME"
fi

# === CONFIG ===
EPOCH_TS=$(date +%s)                # epoch timestamp
HUMAN_TS=$(date +%Y-%m-%d_%H-%M-%S) # human-readable timestamp
LOCAL_BACKUPS_DIR="$(dirname "$0")/backups/${DB_NAME}"
BACKUP_NAME="${EPOCH_TS}_${HUMAN_TS}.sql.gz"

SHORT_TERM_FOLDER="gdrive:readybot_backups/${DB_NAME}/short_term"
LONG_TERM_FOLDER="gdrive:readybot_backups/${DB_NAME}/long_term"
MAX_SHORT_TERM_BACKUPS=14
MIN_LONG_TERM_SPACING_SECONDS=$((5 * 30 * 24 * 60 * 60))  # 5 months, roughly

# === Wait for Postgres to be running... ===
if [[ "$1" == "--prod" ]]; then
  until pg_isready -h "$DB_HOST" -p "$DB_PORT" -U "$POSTGRES_USER"; do
    echo "Waiting for postgres..."
    sleep 2
  done
fi

# === Make backup ===
echo "Creating backup for $DB_NAME at $HUMAN_TS"
mkdir -p "$LOCAL_BACKUPS_DIR" # ensure the local backup directory exists
if [[ "$1" == "--prod" ]]; then # for prod we actually make the backup
  export PGPASSWORD="$POSTGRES_PASSWORD"
  pg_dump -h "$DB_HOST" -U "$POSTGRES_USER" "$DB_NAME" | gzip > "$LOCAL_BACKUPS_DIR/$BACKUP_NAME"
else # for test, we just create a dummy file
  echo "This is a test backup for $DB_NAME at $HUMAN_TS" > "$LOCAL_BACKUPS_DIR/$BACKUP_NAME"
fi
echo "Backup created at $LOCAL_BACKUPS_DIR/$BACKUP_NAME"

# === Upload to short-term ===
echo "Uploading backup to short-term folder: $SHORT_TERM_FOLDER"
rclone copy "$LOCAL_BACKUPS_DIR/$BACKUP_NAME" "$SHORT_TERM_FOLDER"

# === Check number of backups in short-term folder ===
echo "Checking number of short-term backups in $SHORT_TERM_FOLDER"
SHORT_BACKUPS=$(rclone lsf "$SHORT_TERM_FOLDER" --files-only | sort)
NUM_BACKUPS=$(echo "$SHORT_BACKUPS" | wc -l)
echo "Found $NUM_BACKUPS short-term backups in $SHORT_TERM_FOLDER"

# === If not too many, we're done ===
if (( NUM_BACKUPS <= MAX_SHORT_TERM_BACKUPS )); then
  echo "Short-term backups are within limit ($NUM_BACKUPS <= $MAX_SHORT_TERM_BACKUPS). No pruning/promotion needed."
  exit 0
fi  

# === If too many, determine which ones to prune/promote ===
echo "Too many short-term backups ($NUM_BACKUPS > $MAX_SHORT_TERM_BACKUPS). Determining which to prune/promote..."
TO_PRUNE=$(echo "$SHORT_BACKUPS" | head -n $((NUM_BACKUPS - MAX_SHORT_TERM_BACKUPS)))
echo "Backups to prune/promote:"
echo "$TO_PRUNE"

# === Determine date of the latest long-term backup in seconds since epoch ===

# default to 0 if no long-term backups exist
LONG_TERM_EPOCH_TIME=0

# get the latest long-term backup
echo "Checking latest long-term backup in $LONG_TERM_FOLDER"
LATEST_LONG_TERM_BACKUP=$(rclone lsf "$LONG_TERM_FOLDER" --files-only | sort -r | head -n 1)
echo "Latest long-term backup: $LATEST_LONG_TERM_BACKUP"

# if the latest long-term backup exists
if [[ -n "$LATEST_LONG_TERM_BACKUP" ]]; then
  echo "Latest long-term backup exists. Extracting epoch time..."
  # this means "get the part of the filename before the first `_`"
  # ex: `1234567890_2023-10-01_12-5-1.sql.gz` becomes `1234567890`
  LONG_TERM_EPOCH_TIME="${LATEST_LONG_TERM_BACKUP%%_*}"
  echo "Latest long-term backup epoch time: $LONG_TERM_EPOCH_TIME"
fi

# === Prune or promote each short term backup ===
echo "Processing short-term backups to prune or promote..."
while read -r SHORT_TERM_FILE; do
  # this means "get the part of the filename before the first `_`"
  # ex: `1234567890_2023-10-01_12-5-1.sql.gz` becomes `1234567890`
  SHORT_TERM_EPOCH_TIME="${SHORT_TERM_FILE%%_*}"
  echo "Processing short-term file: $SHORT_TERM_FILE (epoch: $SHORT_TERM_EPOCH_TIME)"

  # Calculate the difference between the short-term backup epoch and the long-term backup epoch
  TIME_DIFF=$((SHORT_TERM_EPOCH_TIME - LONG_TERM_EPOCH_TIME))
  echo "Time difference from latest long-term backup: $TIME_DIFF seconds"

  # if the time difference is more than 5 months, promote the short-term backup to long-term
  if (( TIME_DIFF > MIN_LONG_TERM_SPACING_SECONDS )); then
    echo "Promoting $SHORT_TERM_FILE to long-term"
    rclone moveto "$SHORT_TERM_FOLDER/$SHORT_TERM_FILE" "$LONG_TERM_FOLDER/$SHORT_TERM_FILE"
    LONG_TERM_EPOCH_TIME=$SHORT_TERM_EPOCH_TIME
  else # otherwise, prune the short-term backup
    echo "Pruning $SHORT_TERM_FILE from short-term backups"
    rclone delete "$SHORT_TERM_FOLDER/$SHORT_TERM_FILE"
  fi
done <<< "$TO_PRUNE"

# === Cap local backups at 10 files ===
BACKUP_DIR="$(dirname "$0")/backups/${DB_NAME}"
EXTRA_BACKUPS=$(ls -1t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | tail -n +11)

if [[ -n "$EXTRA_BACKUPS" ]]; then
  echo "Removing local backups:"
  while IFS= read -r file; do
    echo "  - $file"
    rm "$file"
  done <<< "$EXTRA_BACKUPS"
else
  echo "No local backups to remove."
fi
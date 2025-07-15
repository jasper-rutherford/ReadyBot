#!/bin/sh

set -e

BASE_FOLDER="gdrive:readybot_backups/${POSTGRES_DB}"
SHORT_TERM_FOLDER="$BASE_FOLDER/short_term"
LONG_TERM_FOLDER="$BASE_FOLDER/long_term"

echo "📁 Fetching available short-term backups..."
echo $SHORT_TERM_FOLDER
rclone lsf $SHORT_TERM_FOLDER > /tmp/short.txt || touch /tmp/short.txt

echo "📁 Fetching available long-term backups..."
echo $LONG_TERM_FOLDER
rclone lsf $LONG_TERM_FOLDER > /tmp/long.txt || touch /tmp/long.txt

echo "🗂️  Available Backups:"
echo "---- short-term ----"
cat /tmp/short.txt
echo "---- long-term -----"
cat /tmp/long.txt

# Combine lists with tags for fuzzy selection
awk '{print "short_term/" $0}' /tmp/short.txt > /tmp/_combined.txt
awk '{print "long_term/" $0}' /tmp/long.txt >> /tmp/_combined.txt

echo ""
echo "Select a backup to restore:"
i=1
# write to a temporary numbered list
> /tmp/numbered_combined.txt
while IFS= read -r line; do
  echo "[$i] $line"
  echo "$line" >> /tmp/numbered_combined.txt
  i=$((i+1))
done < /tmp/_combined.txt

echo ""
printf "Enter the number of the backup to restore: "
read SELECTED_INDEX

# Simple input validation
TOTAL=$(wc -l < /tmp/numbered_combined.txt)
if ! echo "$SELECTED_INDEX" | grep -Eq '^[0-9]+$' || [ "$SELECTED_INDEX" -lt 1 ] || [ "$SELECTED_INDEX" -gt "$TOTAL" ]; then
  echo "❌ Invalid selection. Exiting."
  exit 1
fi

SELECTED=$(sed -n "${SELECTED_INDEX}p" /tmp/numbered_combined.txt)

# Download from GDrive
echo "⬇️  Downloading '$BASE_FOLDER/$SELECTED'..."
rclone copy "$BASE_FOLDER/$SELECTED" /backups

BASENAME=$(basename "$SELECTED")
LOCAL_PATH="/backups/$BASENAME"

# Decompress if needed
if echo "$BASENAME" | grep -qE '\.gz$$'; then
  echo "🫧 Unzipping..."
  gunzip -f "$LOCAL_PATH"
  LOCAL_PATH="${LOCAL_PATH%.gz}"
fi

# Restore to the docker postgres service
echo "🛠 Restoring '$LOCAL_PATH' into database '$POSTGRES_DB' as user '$POSTGRES_USER'..."

psql -h "$DB_HOST" -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$LOCAL_PATH"

echo "✅ Restore complete."

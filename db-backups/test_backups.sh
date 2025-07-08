#!/bin/bash
set -e

# test cases we cover here:
# 1. Keep at most 14 short-term backups
# 2. The first extra short-term backup is promoted when there are no long-term backups
# 3. Extra short-term backups are pruned when there are already recent long-term backups
# 4. Extra short-term backups are promoted to long-term when there are no recent long-term backups
# 5. If many extra short-term backups exist, correctly promote/prune all of them

TEST_DB="testdb"
SHORT_TERM="gdrive:readybot_backups/$TEST_DB/short_term"
LONG_TERM="gdrive:readybot_backups/$TEST_DB/long_term"
EXPECTED_LONG_TERM_COUNT=2
EXPECTED_SHORT_TERM_COUNT=14
SYNTHETIC_BACKUPS=20 # 14 + 1 + 4 + 1 = 20

# === Setup test data ===

echo "Wiping test folders..."
echo "Wiping short-term..."
rclone purge "$SHORT_TERM" || true
echo "Wiping long-term..."
rclone purge "$LONG_TERM" || true

echo "If that failed ^^^ don't panic, its probably because the folders didn't exist yet."

rm -rf "$(dirname "$0")/backups/$TEST_DB"
mkdir -p "$(dirname "$0")/backups/$TEST_DB"

echo "Creating synthetic backups..."
for ((i = 1; i <= SYNTHETIC_BACKUPS; i++)); do
  echo "Creating backup for month $i/$SYNTHETIC_BACKUPS..."
  EPOCH=$(( $(date +%s) - (60 * 60 * 24 * 30 * i) ))  # one per month
  HUMAN=$(date -d "@$EPOCH" +%Y-%m-%d_%H-%M-%S)
  FILENAME="${EPOCH}_${HUMAN}.sql.gz"
  touch "$(dirname "$0")/backups/$TEST_DB/$FILENAME"
  rclone copy "$(dirname "$0")/backups/$TEST_DB/$FILENAME" "$SHORT_TERM"
done

# === Run pruning/promoting logic ===

echo "Running backup logic in test mode..."
bash "$(dirname "$0")/backup.sh"

# === Validate outcomes ===

echo "Checking final state..."

SHORT_FILES=$(rclone lsf "$SHORT_TERM" --files-only | sort -r)
SHORT_FILE_COUNT=$(echo "$SHORT_FILES" | wc -l)
LONG_FILES=$(rclone lsf "$LONG_TERM" --files-only | sort -r)
LONG_FILE_COUNT=$(echo "$LONG_FILES" | wc -l)

echo -n "Short-term count: $SHORT_FILE_COUNT... "
echo "Short-term backups:"
echo "$SHORT_FILES"
if [[ "$SHORT_FILE_COUNT" -eq "$EXPECTED_SHORT_TERM_COUNT" ]]; then
  echo "PASS ✅"
else
  echo "FAIL ❌ (expected $EXPECTED_SHORT_TERM_COUNT)"
fi

echo -n "Long-term count: $LONG_FILE_COUNT... "
echo "Long-term backups:"
echo "$LONG_FILES"
if [[ "$LONG_FILE_COUNT" -eq "$EXPECTED_LONG_TERM_COUNT" ]]; then
  echo "PASS ✅"
else
  echo "FAIL ❌ (expected $EXPECTED_LONG_TERM_COUNT)"
fi

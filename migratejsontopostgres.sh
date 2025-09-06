#!/bin/bash
set -e

if [[ -f .env ]]; then
  export $(grep -v '^#' .env | xargs)
fi

# config
CONTAINER_NAME="readybot-postgres-1"
: "${POSTGRES_USER:?POSTGRES_USER not set}"
: "${POSTGRES_DB:?POSTGRES_DB not set}"
JSON_FILE="./data/spotify/themoji.json"

# make sure jq is available
if ! command -v jq &> /dev/null; then
  echo "❌ jq not found. Install it first." >&2
  exit 1
fi

# check json file exists
if [[ ! -f "$JSON_FILE" ]]; then
  echo "❌ JSON file not found at $JSON_FILE"
  exit 1
fi

echo "📥 Inserting playlist emojis..."

jq -c '.themes[]' "$JSON_FILE" | while read -r row; do
  emoji=$(echo "$row" | jq -r '.emoji')
  spotify_id=$(echo "$row" | jq -r '.id')

  docker exec -i "$CONTAINER_NAME" psql --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<EOF
INSERT INTO playlist_emojis (emoji, spotify_playlist_id)
VALUES ('$emoji', '$spotify_id')
ON CONFLICT (emoji) DO UPDATE SET spotify_playlist_id = EXCLUDED.spotify_playlist_id;
EOF
done

echo "✅ Migration complete!"

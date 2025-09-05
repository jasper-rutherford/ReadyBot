-- migrate:up
CREATE TABLE playlist_emojis (
  emoji TEXT PRIMARY KEY,
  spotify_playlist_id TEXT NOT NULL
);

-- migrate:down


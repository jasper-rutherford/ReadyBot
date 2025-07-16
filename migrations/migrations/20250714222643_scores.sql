-- migrate:up

CREATE TABLE scores (
    spotify_uri text,
    score integer,
    song_name text,
    stamp timestamp without time zone,
    themoji text
);

-- migrate:down


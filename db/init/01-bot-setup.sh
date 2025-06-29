#!/bin/bash
set -e

# log in as the admin and create a login user for the bot if it doesn't exist
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER ${BOT_POSTGRES_USER} WITH PASSWORD '${BOT_POSTGRES_PASSWORD}';
  GRANT ALL PRIVILEGES ON DATABASE ${POSTGRES_DB} TO ${BOT_POSTGRES_USER};
EOSQL

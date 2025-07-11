#!/bin/bash
set -e

# This script creates a user for the bot in the PostgreSQL database.
# the user has permissions to connect to the database and perform CRUD operations on the public schema.
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER ${BOT_POSTGRES_USER} WITH PASSWORD '${BOT_POSTGRES_PASSWORD}';
  GRANT CONNECT ON DATABASE ${POSTGRES_DB} TO ${BOT_POSTGRES_USER};
  \c ${POSTGRES_DB}
  GRANT USAGE ON SCHEMA public TO ${BOT_POSTGRES_USER};
  GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO ${BOT_POSTGRES_USER};
  ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO ${BOT_POSTGRES_USER};
EOSQL


#!/bin/sh
set -e

echo "Waiting for Postgres..."
until pg_isready -h "$DB_HOST" -U "$POSTGRES_USER"; do
  sleep 1
done

echo "Running dbmate migrations..."
dbmate --migrations-dir=/migrations up

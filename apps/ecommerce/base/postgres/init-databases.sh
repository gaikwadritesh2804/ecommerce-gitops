#!/bin/bash
set -e

for db in users_db products_db orders_db payments_db; do
  echo "Creating database: $db"
  psql -v ON_ERROR_STOP=1 \
    --username "$POSTGRES_USER" \
    --dbname postgres \
    --command "CREATE DATABASE \"$db\";"
done
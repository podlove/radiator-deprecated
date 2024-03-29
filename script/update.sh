#!/bin/sh

# Update application to run for its current checkout.

set -e

cd "$(dirname "$0")/.."

script/bootstrap.sh

echo "==> Updating db…"
# run all database migrations to ensure everything is up to date.
mix ecto.migrate

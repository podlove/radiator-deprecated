#!/bin/sh

# Set up application for the first time after cloning, or set it back to the initial first unused state.

set -e

cd "$(dirname "$0")/.."

script/bootstrap.sh

echo "==> Setting up DB…"
mix ecto.setup

echo "==> App is now ready to go!"

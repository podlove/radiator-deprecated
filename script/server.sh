#!/bin/sh

# Launch the application and any extra required processes locally.

set -e

cd "$(dirname "$0")/.."

# ensure everything in the app is up to date.
script/update.sh

iex -S mix phx.server

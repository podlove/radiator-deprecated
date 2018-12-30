#!/bin/sh

# Resolve all dependencies that the application requires to run.

set -e

cd "$(dirname "$0")/.."

mix deps.get
cd assets && npm install


#!/bin/sh
set -e

if [ "$DEBUG_API" = "true" ]; then
  echo "Starting in DEBUG mode..."
  exec node --enable-source-maps --inspect=0.0.0.0:$DEBUG_PORT dist/index.js
else
  echo "Starting in normal mode (not debug)..."
  exec node dist/index.js
fi
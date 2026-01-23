#!/bin/sh
set -e

if [ "$DISCORD_DEBUG" = "true" ]; then
  echo "Starting in DEBUG mode..."
  exec node --enable-source-maps --inspect=0.0.0.0:$DISCORD_DEBUG_PORT dist/bot.js
else
  echo "Starting in normal mode (not debug)..."
  exec node dist/bot.js
fi
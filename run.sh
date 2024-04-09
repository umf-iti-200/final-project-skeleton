#!/bin/sh

DIRECTORY=backend/node_modules

if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
  cd backend
  npm install
  cd ..
fi

node ./backend/server.js

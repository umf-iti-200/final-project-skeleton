DIRECTORY=backend/node_modules

if [ ! -d "$DIRECTORY" ]; then
  cd backend && npm install && cd ..
fi

node ./backend/server.js

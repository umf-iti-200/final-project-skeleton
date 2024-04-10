echo >/dev/null # >nul & GOTO WINDOWS & rem ^
echo 'Processing for Linux'

DIRECTORY=backend/node_modules

if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
  cd backend
  npm install
  cd ..
fi

node ./backend/server.js

# Then, when all Linux commands are complete, end the script with 'exit'...
exit 0

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

:WINDOWS
echo "Processing for Windows"

if not exist backend/node_modules (
  echo "$DIRECTORY does not exist."
  cd backend
  npm install
  cd ..
)

node ./backend/server.js

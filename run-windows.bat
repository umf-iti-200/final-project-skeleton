if not exist backend/node_modules (
  cd backend && npm install && cd .. && node backend/server.js
)

node backend/server.js

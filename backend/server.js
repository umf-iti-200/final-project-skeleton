const express = require("express");
const path = require('path');

const PORT = 3000;

const app = express();

app.use('/', express.static(path.join(__dirname, '../frontend')))

// Add here your apis

app.get("/api/say-hello", function (req, res) {

    res.json("Hello World!");
});

app.listen(PORT, function () {
    console.log(`Server listening on port ${PORT}!`);
});

const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const config = require('config');
console.log(config);

app.get('/', (req, res) => {
  res.send(`
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Version1</title>
      <style>
        body {
          background-color: green;
        }
        h1 {
          font-size: 3em; 
        }
      </style>
    </head>
    <body>
      <h1>Version1</h1>
    </body>
    </html>
  `);
});

app.get('/status', (req, res) => {
  res.send('ok');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
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
      <title>Version2</title>
      <style>
        body {
          background-color: lightgreen; /* Background color set to sky blue */
        }
        h1 {
          font-size: 3em; /* Heading font size set to 3em */
        }
      </style>
    </head>
    <body>
      <center><h1>Version 2</h1></center>
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

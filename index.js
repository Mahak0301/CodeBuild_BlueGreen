const express = require('express')
const app = express()
const port = process.env.PORT || 3000 ;
const config = require('config')
console.log(config);

app.get('/', (req, res) => {
<<<<<<< HEAD
  res.send('Version2')
=======
  res.send('Version3')
>>>>>>> ee4a4abca3a54234f46cca2ea0bf41c3b01b9ec4
})

app.get('/status', (req, res) => {
    res.send('ok')
  })


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

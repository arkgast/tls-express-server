const https = require('https')
const fs = require('fs')
const express = require('express')

const options = {
  key: fs.readFileSync('key.pem'),
  cert: fs.readFileSync('cert.pem')
}

const app = express()

app.get('/', (req, res) => {
  res.send({ message: 'Hi!' })
})

const httpsServer = https.createServer(options, app)

const PORT = 3001
httpsServer.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})

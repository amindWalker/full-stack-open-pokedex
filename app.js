const express = require('express')
const app = express()

// Heroku dynamically sets a port
const PORT = process.env.PORT || 5000

app.use(express.static('dist'))

app.get('/health', (req, res) => {
  res.send('\n✅ [ Sucess ]: ok was returned from the server\n')
})

app.get('/version', (req, res) => {
  res.send('v1') // change this string to ensure a new version deployed
})

app.listen(PORT, () => {
  console.log(`\n✅ [ Success ]: server started on port ${PORT}\n`)
})

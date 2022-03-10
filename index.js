const express = require('express')
const cors = require('cors')
const PORT = process.env.PORT || 3000

const app= express()
app.use(cors())

// need a route
app.get('/test', (req, res) => {
    res.send('Docker is hard 🐳!')
})


app.listen(PORT, () => {
    console.log(`listening on port ${PORT}...`)
})

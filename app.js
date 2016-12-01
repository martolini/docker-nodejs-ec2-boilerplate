import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('Hello, I\'m the Docker Example')
})

app.listen(process.env.PORT || 3000, () => {
  console.log('Listening on %s', process.env.PORT || 3000)
})
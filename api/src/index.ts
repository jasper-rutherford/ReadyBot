// index.js
import express from 'express';

const app = express();

app.get('/hello', (req, res) => {
  res.send('Hello world from inside a Docker container!');
});

const PORT = process.env.API_PORT || 3000;
app.listen(PORT, () => {
  console.log(`API server listening on port ${PORT}`);
});

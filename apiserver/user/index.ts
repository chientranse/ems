import express = require('express');

const app: express.Application = express();

app.get('/user', (req, res) => {
  res.send('user api invoke');
});

app.listen(8080, () => {
  console.log('user api is listening on port 8080');
});

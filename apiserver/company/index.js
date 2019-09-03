const express = require('express');

const app = express();

app.use('/company', (req, res) => {
  console.log('company api invoke');
  res.send('company ljklsaf');
});

app.listen(8080, () => {
  console.log('company api server listening at port 8080');
});

const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello everyone, this is a simple application running on port 3000!');
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});

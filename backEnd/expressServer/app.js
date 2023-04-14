const express = require('express');
const routes = require('./routes');
const cors = require('cors');


const app = express();
const port = 3000;

// Enable Cors
app.use(cors());
app.options('*', cors());
// Add Routes
app.use('/', routes);

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
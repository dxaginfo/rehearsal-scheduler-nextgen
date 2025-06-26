const express = require('express');
const app = express();
app.use(express.json());

app.get('/api/health', (req, res) => res.json({ status: 'ok' }));

// More endpoints here (see docs)

module.exports = app;

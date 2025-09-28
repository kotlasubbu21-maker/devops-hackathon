const express = require('express');
const app = express();
const port = 3000;

app.get('/health', (req, res) => res.send('ok'));
app.get('/patients', (req, res) => res.json([{id:1,name:'John Doe'}]));

app.listen(port, () => console.log('Patient Service running on port ' + port));

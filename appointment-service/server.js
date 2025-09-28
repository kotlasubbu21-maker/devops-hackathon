const express = require('express');
const app = express();
const port = 3001;

app.get('/health', (req, res) => res.send('ok'));
app.get('/appointments', (req, res) => res.json([{id:1,patientId:1,date:'2025-10-01'}]));

app.listen(port, () => console.log('Appointment Service running on port ' + port));

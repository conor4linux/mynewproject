const express = require('express');
const path = require('path');

const app = express();

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, 'public')));

const PORT = process.env.PORT || 80;

app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});

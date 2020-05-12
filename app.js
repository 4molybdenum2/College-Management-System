const express = require('express');
const mysql = require('mysql');
const expressLayouts = require('express-ejs-layouts');
const db = require('./db/db');
const path = require('path');
const bodyParser = require('body-parser');

// Connect
db.connect((err) => {
    if(err){
        throw err;
    }
    console.log('MySql Connected...');
});

const app = express();

//setting view engine
app.set('view engine', 'ejs'); 
app.use(expressLayouts);
app.use(bodyParser.urlencoded({extended:true}));

//serving static files
app.use(express.static(path.join(__dirname, "public")));
app.use(express.static(path.join(__dirname, "node_modules")));

// all routes in route file under routes folder
app.use("/", require("./routes/route"));
app.use("/",require("./routes/query"));

const PORT = 3000 || process.env.PORT;

app.listen(PORT, () => {
    console.log(`Server started on PORT:${PORT}`);
});
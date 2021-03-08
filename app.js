const express = require('express');
const mysql = require('mysql');
const app = express();
const dotenv = require('dotenv');
const path = require('path');
dotenv.config();

app.use(express.static('public'));
app.use(express.urlencoded({extended: false}));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

app.get('/', (req, res) => {
    connection.query(
        'SELECT * FROM orders',
        (error, results) => {
            if (error) {
                console.log(error)
            } else {
                res.render('index', {items: results, query: req.query});
            }
        }
    );
});

app.listen(process.env.PORT);
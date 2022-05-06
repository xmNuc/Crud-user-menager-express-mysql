const express = require('express');
const exphbs = require('express-handlebars');
require('dotenv').config();
const routes = require('./server/routes/user');
// console.log(process.env);

const app = express();
const port = process.env.PORT || 3000;

//Middleware
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//static files
app.use(express.static('public'));

//Handlebars
app.engine('hbs', exphbs.engine({ extname: '.hbs' }));
app.set('view engine', 'hbs');

app.use('/', routes);

app.listen(port, () => console.log(`Servers has started on http://localhost:${port}`));

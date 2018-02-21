var path = require('path');
var express = require('express');

const bodyParser = require('body-parser');
const methodOverride = require('method-override');

var mongoose = require('mongoose');
mongoose.connect("mongodb://localhost:27017/usuarios");
require("./api/models/Usuarios");

var index = require("./api/routes/index");

var app = express();

var env = process.env.NODE_ENV || 'development';
if ('development' == env) {
    app.use(express.static(path.join(__dirname, "/")));
    app.use(bodyParser.json());
    app.use(methodOverride());
}

app.use("/", index);

app.listen('8080', function() {
    console.log("servidor");
});
// app.js - About the simplest web server you can create.
// Sets up a web server via Express, points the server to
// the /public directory, and listens on port 3000. 

var express = require('express');
var app = express();
app.use(express.static(__dirname + '/public'));
app.listen(3000);

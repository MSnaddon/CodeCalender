var express = require('express');
var app = express();
var path = require('path');
var data = require('./data/mockData.json')

app.use(express.static('client/build'));

app.listen(3000, function(){

  app.get('/', function(req, res){
    res.sendFile(path.join(__dirname + '/client/build/index.html'));
  });

  app.get('/api/events', function(req, res){
  	res.send(data)
  })

  console.log('App running on port ' + this.address().port);
});
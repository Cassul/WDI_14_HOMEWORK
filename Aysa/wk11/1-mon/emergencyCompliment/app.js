const express = require('express');
// const ejs = require('ejs');
const app = express();
const PORT = 8080;
const _ = require('lodash');

// navigator.geolocation.getCurrentPosition(function(position) {
//   callWeatherApi(position.coords.latitude, position.coords.longitude);
//   var config = {
//     'latitude': position.coords.latitude,
//     'longitude': position.coords.longitude
// };
// geocoding.location(config, function (err, data){
//     if(err){
//         console.log(err);
//     }else{
//         console.log(data);
//     }
// });
// });
app.use(express.static('public'));
app.set('views', './views');
app.set('view engine', 'ejs');

app.get('/', function (req, res) {
  const compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Shut up and take my money",
  "It's almost beer o'clock",
  "The Force is strong with you"
  ];
  const colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"];

  res.render('index', {
    compliment: _.sample(compliments),
    color: _.sample(colors)
  });
});

app.get(/.*/, function (req, res) {
  var name = req.url.slice(1, req.url.length);
  name = _.capitalize(name);
  const compliments = [
  `${name}, your instructors love you`,
  `${name}, high five = ^5`,
  `${name}, shut up and take my money`,
  `${name}, it's almost beer o'clock`,
  `${name}, the Force is strong with you`
  ];
  const colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"];

  res.render('index', {
    compliment: _.sample(compliments),
    color: _.sample(colors)
  });
  console.log(req.url);
});

app.listen(PORT, function () {
  console.log(`app is listening on ${PORT}`);
});
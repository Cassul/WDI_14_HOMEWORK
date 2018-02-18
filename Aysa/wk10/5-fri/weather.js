const input = process.argv[2];
var request = require('request');
request(`http://api.openweathermap.org/data/2.5/weather?q=${input}&units=metric&APPID=e9a48d665296cfb8c7f4d6f52b2a75ee

`, function (error, response, body) {
  // console.log('error:', error); // Print the error if one occurred
  // console.log('statusCode:', response && response.statusCode); // Print the response status code if a response was received
  console.log('temp:', JSON.parse(body).main.temp); // Print the HTML for the Google homepage.
});
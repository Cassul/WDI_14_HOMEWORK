var rates;
var weather;
$.get('http://api.openweathermap.org/data/2.5/forecast?id=7839805&appid=e9a48d665296cfb8c7f4d6f52b2a75ee', function (data) {
weather = data;
var clickWeather = document.getElementById('weather');
clickWeather.addEventListener('click', function() {
  var time = weather.list[0].dt_txt.slice(0,10);
  var showWeather;
  var whatDay = 0;
  var dayOne = document.createElement('p');
  dayOne.textContent = time;
  document.getElementById('0').appendChild(dayOne);
  weather.list.forEach(function(arr, index) {
  var weatherDayOne = document.createElement('p');
  if (time == arr.dt_txt.slice(0,10)) {
        console.log(time);
    showWeather = document.getElementById(whatDay.toString());
    showWeather.appendChild(weatherDayOne);
    weatherDayOne.setAttribute('style', 'white-space: pre;');
    weatherDayOne.textContent = arr.dt_txt.slice(10) + "\n" + "t = " + Math.round(Number(arr.main.temp) - 272.15) + "\n" + "wind = " + arr.wind.speed + "\n" + "humidity " + arr.main.humidity  + "\n" + arr.weather[0].description; 
  } else {
    whatDay++;
    time = arr.dt_txt.slice(0,10);
    console.log(arr.dt_txt.slice(0,10));
    showWeather = document.getElementById(whatDay.toString());
    showWeather.appendChild(weatherDayOne);
    weatherDayOne.setAttribute('style', 'white-space: pre;');
    weatherDayOne.textContent = arr.dt_txt + "\n" + "t = " + Math.round(Number(arr.main.temp) - 272.15) + "\n" + "wind = " + arr.wind.speed + "\n" + "humidity " + arr.main.humidity  + "\n" + arr.weather[0].description; 
  }
});
});
});
$.get('https://openexchangerates.org/api/latest.json', {app_id: 'e731fce50d094eb5b0c4a1cc6fb9a134', show_alternative: 1}, function(data) {
rates = data;
var BTC = 1/Number(rates.rates.BTC);
var ETH = 1/Number(rates.rates.ETH);
var XRP = 1/Number(rates.rates.XRP);
var bitcoin = document.getElementById('bitcoin');
bitcoin.addEventListener('click', function() {
  var crypto = document.getElementById('crypto');
  var currencies = document.createElement('p');
  currencies.textContent  = 'bitcoin = ' + BTC + "\n" + 'ethereum = ' + ETH + "\n" + 'ripple = ' + XRP;
  crypto.appendChild(currencies);
});
console.log('bitcoin = ' + BTC + "\n" + 'ethereum = ' + ETH + "\n" + 'ripple = ' + XRP);
});

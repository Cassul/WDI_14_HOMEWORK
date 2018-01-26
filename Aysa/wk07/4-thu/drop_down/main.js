var body = document.querySelectorAll('body')[0];


var city = document.getElementById('city-type');
city.addEventListener("change", function() {
    if(city.value == "sf") {
      body.removeAttribute('class');
      body.setAttribute('class', 'sf');
    } else if(city.value == "nyc") {
      body.removeAttribute('class');
      body.setAttribute('class', 'nyc');
    } else if(city.value == "au") {
      body.removeAttribute('class');
      body.setAttribute('class', 'austin');
    } else if(city.value == "sy") {
      body.removeAttribute('class');
      body.setAttribute('class', 'sydney');
    } else if(city.value == "la") {
      body.removeAttribute('class');
      body.setAttribute('class', 'la');
    } else {
      body.removeAttribute('class');
      body.setAttribute('class', 'default');
    }
});
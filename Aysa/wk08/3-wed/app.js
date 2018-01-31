// function createTextElement(el, value) {
//   var element = document.createElement(el);
//   element.textContent = value;
//   return element;
// }

// function createImage(value) {
//   var image = document.createElement('img');
//   image.setAttribute('src', value);
//   return image;
// }
var $container = $('.container');
var options;
// $('.container').append("<input placeholder='type name of the movie' class='input'>");
// $('.container').append("<button class='btn'>find</button>");
$('button').on('click', function () {
  console.log('hey');
  var value = $('input').val();
  options = {
  url: `http://www.omdbapi.com/?apikey=2f6435d9&s=${value}` 
  };

  $.ajax(options).done(function(res) {
   //IOS inversion of control
    res.Search.forEach(function(movie) {
      var main = "<div class='movie'>\
                    <a class='oneMovie' href='#'><h1>" + movie.Title + "</h1></a>\
                    <p>" + movie.Year + "</p>\
                    <img src='" + movie.Poster + "'>\
                  </div>"
    $container.append(main);
    oneMovie();
    // $body.append(createTextElement('h1', movie.Title));
    // $body.append(createTextElement('p', movie.Year));
    // $body.append(createImage(movie.Poster));
  });
});
});

function oneMovie () {
$('.oneMovie').on('click', function(event) {
  var value = event.target.textContent;
  options = {
  url: `http://www.omdbapi.com/?apikey=2f6435d9&s=${value}` 
  };
  $('.movie').remove();
  
});
}

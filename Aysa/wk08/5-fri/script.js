const $body = $('body');
const $container = $('.container');
const $button = $('.btn');
const $input = $('input');

$button.on('click', function (event) {
  var whatToSearch = $input.val();
  var options = {
    url: `http://api.giphy.com/v1/gifs/search?q=${whatToSearch}&api_key=92A65z0b6O7YBwt0dhlaORPudU2MeiJw&limit=100`,
    type: "GET"
  };

  $.ajax(options).done(function (res) {
    console.log(res);
    var main = [];
    res.data.forEach(function(res) {
      main.push("<div class='giphy'>\
                  <h1>" + res.title + "</h1>\
                  <img src='" + res.images.fixed_height.url + "'>\
                </div>")
              });
    $container.append(main);
  });
});
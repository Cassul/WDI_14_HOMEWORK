window.onload = function() {
  var $pokemon = $('.addPokemon');
  var $header = $('header');
  var $body = $('body');
  var $form = $('#myModal');
  var $button = $('.btn');
  

  $pokemon.on('click', function (event) {
    $form.removeAttr('class');
    $form.addClass('modal');
  });
  
  $button.on('click', function (event) {
    var options = {
    url: "/pokemons/new",
    type: "POST",
    data: {
      nickname: $('.nickname').val(),
      species: $('.species').val(),
      level: $('.level').val()
    },
    success: function(data) {

    }
  };
    $.ajax(options);
  });
};
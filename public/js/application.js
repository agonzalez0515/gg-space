$(document).ready(function() {
  getLoginForm();
  getRegisterForm();
  addText();
  getImage();
});

var getLoginForm = function(){
  $('.add-login').on('click', function(event){
  event.preventDefault();

    $.ajax({
      url: '/sessions/new',
      method: 'GET'
    })
    .done(function(response){
      $('.login-form').append(response);
      $('.add-login').hide();
    })
    })
}

var getRegisterForm = function(){
  $('.add-register').on('click', function(event){
  event.preventDefault();

  $.ajax({
    url: '/users/new',
    method: 'GET'
  })
  .done(function(response){
    $('.register-form').append(response);
    $('.add-register').hide();
  })
  })
}

var addText = function(){
  $('#picture').on( "click", function(event){
  event.preventDefault();

  var $this = $(this);
  var url ='/quotes'

  $.ajax({
    url: url,
    method: 'GET'
  })
  .done(function(response){
    $('#info').remove();
    $('#picture').append(response);

    })
  })
}



var getImage = function(){
  $.ajax({
    url: '/quotes/photo',
    dataType: 'json'
  })
  .done(loadImage)
  .fail(ajaxFail)
}

var loadImage = function(response){
  var $imageContainer = $('#picture')
  $imageContainer.css('background-image', 'url(' + response.url+ ')');
}

var ajaxFail = function(response){
  console.log("fail")
}

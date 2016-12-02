$(document).ready(function() {
  addText();
  getImage();
});

var addText = function(){
  $('#picture').on( "click", function(event){
    event.preventDefault();

      var $this = $(this);
      var url ='/quotes'

      $.ajax({
      url: url,
      method: 'GET'
    }).done(function(response){
      // debugger;
      //   if($(event.target).children().length === 1){
      //     $(event.target).children('#info').toggle();
      //  }else {
        $('#picture').append(response);
      // }
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
  console.log(response)
}

$(document).ready(function() {
  addText();
  loadImage();
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
        $('#picture').append(response);
        //need to hide the text on mouseaway
    })
  })
}



var loadImage = function(){
$('#url').load(function(event){

      var url = '/quotes'

      $.ajax({
      url: url,
      method: 'GET'
    }).done(function(response){
      console.log(response)

      .css(background-image: response)
    })
  })
}

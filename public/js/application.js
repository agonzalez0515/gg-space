$(document).ready(function() {
  addText();
});


var addText = function(){
  $('.space').on( "click", function(event){
    event.preventDefault();

      var $this = $(this);
      var url ='/quotes'

      $.ajax({
      url: url,
      method: 'GET'
    })
      .done(function(response){
        console.log(response)
      })

  })
}

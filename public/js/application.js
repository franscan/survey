$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()


  $('#add_response').on('click', function(event) {
    event.preventDefault();
    console.log('the add response button was clicked')
    $('#add_option').append('<input name="option4" placeholder="option 4">')
  });



  $('#add_question').on('click',function(event){
    event.preventDefault();
    console.log('will this work')
    $('#add_option').append('<input name="Question" placeholder="Question"><input name="option1" placeholder="option 1"><input name="option2" placeholder="option 2"><input name="option3" placeholder="option 3"><input name="option4" placeholder="option 4">')

  });


  $('.remove_question').on('click',function(event){
    event.preventDefault();
    console.log(this)
    $(this).parent().remove()
  });

});

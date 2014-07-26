$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()


  $('#add_response').on('click', function(event) {
    event.preventDefault();
    console.log('the add response button was clicked')
    $('#add_option').append('<div><input name="survey[questions][][options][]" placeholder="option"><input type="submit" class="remove_question" value="delete option"></div>')
    removeOptionQuestion()
  });



  $('#add_question').on('click',function(event){
    event.preventDefault();
    console.log('will this work')
    $('#add_option').append('<input name="survey[questions][][question]" placeholder="Question"><div><input name="survey[questions][][options][]" placeholder="option"><input type="submit" class="remove_question" value="delete option"></div><div><input name="survey[questions][][options][]" placeholder="option"><input type="submit" class="remove_question" value="delete option"></div>')

    removeOptionQuestion()
  });

  function removeOptionQuestion() {
    $('.remove_question').on('click',function(event){
      event.preventDefault();
      console.log(this)
      $(this).parent().remove()
    });
  }
  removeOptionQuestion()
});

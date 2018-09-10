

 // card flip on click of a button
    $(document).on("click", ".flip-container", function() {
        $(this).toggleClass('hover');
    });



//creating subjects buttons by looping the subjects over:
    var subjects = [];

    for (var i = 0; i < subjects.length; i++) {
      
             
      $('#subject-btn').addClass(subjects[i]);             

    }
    //onclick function creats a new button with a user input as a text
    $('.userInput-subject').on('click', function () {
      event.preventDefault();
      var userInputSubject = $('input').val();               //put user input value into a variable
      subjects.push(userInputSubject);                         //push userInput to the array of topics
      var newButton = $("<button>").addClass(userInputSubject).text(userInputSubject);  //create a new button with a userInput text
      $('.subjects').append(newButton);                 //append the button to the div 'topics'
      //clear the input field
      $('input').val(' ');

    })




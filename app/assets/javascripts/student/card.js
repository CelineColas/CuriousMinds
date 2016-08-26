// var in_box = false;

// $('.front').click(function(){

//   $("#effort_content").click(function() {
//     console.log("YAY !!");
//     var in_box = true;
//   });

//   console.log(in_box);
//   if (in_box == true) {
//     console.log("gagné !");
//     return true;
//   }
//   else {
//     if ($('.card').hasClass("flipped")) {
//       $(this).find('.card').removeClass('flipped');
//     }
//     else {
//       $(this).find('.card').addClass('flipped');
//     }
//     return true;
//   }
// });





// $('.front').click(function(){
//   $('.flip > .card:not(.question-input-field').addClass('flipped');
// });

// $('.wrapper').click(function(event){
//   event.preventDefault();
//   $('.flip > .card').removeClass('flipped');
// });


$('.clickable-surface').on('click', function(){
  $('.card-front').toggleClass('animate-front');
  $('.card-back').toggleClass('animate-back');
});



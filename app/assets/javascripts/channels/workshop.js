$(document).ready(function(){


$('#lesson_workshop').change(function(){
     if($(this).prop('checked')){
          $(this).val('TRUE');
     }else{
          $(this).val('FALSE');
     }
	});


// function check() {
//     document.getElementById("lesson_workshop").checked = true;
// }

// function uncheck() {
//     document.getElementById("lesson_workshop").checked = false;
// }

});
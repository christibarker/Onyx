$(document).ready(function(){

 	var options = [
    // {selector: '.pole', offset: 200, callback: customCallbackFunc },
    {selector: '.pole', offset: 0, callback: function(el) {
    // Materialize.toast("Please continue scrolling!", 1500 );
     Materialize.fadeInImage($(el), 1000);
     }},
   ];
   Materialize.scrollFire(options);

});



// var cord_drop = function () {
// 	$("#cord1").animate({top: -20}, 1300, function () { $("#cord_cover1").css({borderTop: "1px solid rgb(200,200,200)"}); });
// 	$("#cord2").animate({top: -20}, 1000, function () { $("#cord_cover2").css({borderTop: "1px solid rgb(200,200,200)"}); });
// 	$("#cord3").animate({top: -20}, 1600, function () { $("#cord_cover3").css({borderTop: "1px solid rgb(200,200,200)"}); });
//
// 	$(document).off("scroll", cord_drop);
// };

// var wayp = new Waypoint({
//   element: document.getElementById('cord_box'),
//   handler: function(direction) {
// 		console.log("fire fire fire 1");
// 		if( window.innerWidth > 960 ) {
// 			// stuff here
// 			$("#cord1").animate({top: -20}, 1300, function () { $("#cord_cover1").css({borderTop: "1px solid rgb(200,200,200)"}); });
// 			$("#cord2").animate({top: -20}, 1000, function () { $("#cord_cover2").css({borderTop: "1px solid rgb(200,200,200)"}); });
// 			$("#cord3").animate({top: -20}, 1600, function () { $("#cord_cover3").css({borderTop: "1px solid rgb(200,200,200)"}); });
// 			$("#jump_nav").css("display", "inline");
// 		} else {
// 		}
//   },
//   offset: 600
// })
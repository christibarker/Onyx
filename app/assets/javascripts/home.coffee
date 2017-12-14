# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('.carousel').carousel();
    # $('.carousel.carousel-slider').carousel({fullWidth: true});
 
        
		# // Next slide
		$('.carousel').carousel('next');
		$('.carousel').carousel('next', 3); # // Move next n times.

		# # // Previous slide
		# $('.carousel').carousel('prev');
		# $('.carousel').carousel('prev', 4); # // Move prev n times.

		# # // Set to nth slide
		# $('.carousel').carousel('set', 4);

		# # // Destroy carousel
		# $('.carousel').carousel('destroy');

 	$('.collapsible').collapsible();
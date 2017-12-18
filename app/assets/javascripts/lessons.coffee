# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('.destroy_lesson').on 'ajax:success', ->
		# console.log('worked')
		$(this).closest('.lesson').remove()

	$('.part_description').truncate
		lines: 2
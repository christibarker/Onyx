# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->

	$('.destroy_show').on 'ajax:success', ->
		# console.log('worked')
		$(this).closest('.show').remove()

  $('.add_nested_fields').click ->
  	$('select').material_select()

	$('.part_show').truncate
		lines: 2
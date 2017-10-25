# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
build_backend_datepickers = ->
  $('input.date').each (index) ->
    $(this).datepicker({
      changeMonth: true,
      changeYear: true,
      yearRange: "-100:-0",
      dateFormat: 'yy/mm/dd'
    })
    return
  return

$(document).on 'ready page:load', ->
  build_backend_datepickers()
  return

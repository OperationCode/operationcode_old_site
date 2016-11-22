# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  return if $('.veterans-map').length == 0

  veteranMap = L.map('veterans-map').setView([37.0902, -95.7129], 4)
  osmUrl = '//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
  osmAttrib = 'Map data © <a href="http://openstreetmap.org">'
  osmAttrib += 'OpenStreetMap</a> contributors'

  L.tileLayer(osmUrl, {
    attribution: osmAttrib
    maxZoom: 18,
  }).addTo(veteranMap)
  latlongs = $('.veterans-map').data('lat-longs')
  $.each latlongs, (i, value) ->
    if value[0] is null || value[1] is null
      return
    L.marker(value).addTo(veteranMap)

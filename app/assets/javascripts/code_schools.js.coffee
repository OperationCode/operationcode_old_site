# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  return if $('.codeschools-map').length == 0

  code_schoolsMap = L.map('codeschools-map').setView([37.0902, -95.7129], 4)
  osmUrl = '//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
  osmAttrib = 'Map data © <a href="http://openstreetmap.org">'
  osmAttrib += 'OpenStreetMap</a> contributors'
  markers = L.markerClusterGroup({maxClusterRadius:25})

  # Workaround for wrong image URL
  defaultIcon = L.icon({
    iconRetinaUrl: '../assets/leaflet/dist/images/marker-icon-2x.png',
    iconUrl: '../assets/leaflet/dist/images/marker-icon.png',
    shadowUrl: '../assets/leaflet/dist/images/marker-shadow.png',
    iconSize:      [25, 41],
    iconAnchor:    [12, 41],
    popupAnchor:   [1, -34],
    tooltipAnchor: [16, -28],
    shadowSize:    [41, 41]
  })
  L.Marker.prototype.options.icon = defaultIcon

  L.tileLayer(osmUrl, {
    attribution: osmAttrib
    maxZoom: 18,
  }).addTo(code_schoolsMap)
  latlongs = $('.codeschools-map').data('lat-longs')
  $.each latlongs, (i, value) ->
    if value[0] is null || value[1] is null
      return
    markers.addLayer(L.marker(value)).addTo(code_schoolsMap)

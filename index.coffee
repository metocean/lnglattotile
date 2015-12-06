module.exports = (lng, lat, zoom) ->
  n = Math.pow(2, zoom)
  [
    Math.floor(n * ((lng + 180) / 360))
    Math.floor(n * (1 - (Math.log(Math.tan(lat) + 1 / Math.cos(lat)) / Math.PI)) / 2)
    zoom
  ]
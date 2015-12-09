module.exports = (lng, lat, zoom) ->
  n = Math.pow(2, zoom)
  [
    Math.floor(n * ((lng + 180) / 360))
    Math.floor(n * (1.0 - Math.log(Math.tan(lat * Math.PI / 180.0) + 1.0 / Math.cos(lat * Math.PI / 180.0)) / Math.PI) / 2.0)
    zoom
  ]
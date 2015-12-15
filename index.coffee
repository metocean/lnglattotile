lnglattotilefloat = require 'lnglattotilefloat'

module.exports = (lng, lat, zoom) ->
  result = lnglattotilefloat lng, lat, zoom
  result[0] = Math.floor result[0]
  result[1] = Math.floor result[1]
  result
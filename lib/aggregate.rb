require_relative './apply'
require_relative './blackbird'
require_relative './map'
require_relative './sum'

def aggregate
  blackbird._(sum)._(map)
end

require_relative './apply'
require_relative './map'
require_relative './compose'
require_relative './sum'

def aggregate
  compose._(sum) * map
end

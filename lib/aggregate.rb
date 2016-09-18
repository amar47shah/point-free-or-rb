require_relative './blackbird'
require_relative './map'
require_relative './sum'

def aggregate
  blackbird.(sum).(map)
end

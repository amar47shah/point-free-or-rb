require_relative './apply'
require_relative './aggregate'
require_relative './constant'

def length
  aggregate._(constant._(1))
end

def total_number
  aggregate._(length)
end

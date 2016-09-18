require_relative './aggregate'
require_relative './constant'

def length
  aggregate.(constant.(1))
end

def total_number
  aggregate.(length)
end

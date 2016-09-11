require_relative './distance'
require_relative './id'

def manhattan
  distance._(id)._(abs)
end

def abs
  lambda do |x|
    if x >= 0
      x
    else
      -x
    end
  end
end

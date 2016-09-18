require_relative './distance'
require_relative './id'

def manhattan
  distance.(id).(abs)
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

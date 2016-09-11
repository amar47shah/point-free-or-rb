require_relative './compose'
require_relative './aggregate'

def distance
  distance_point_ful_2
end

def distance_point_ful
  lambda do |outer|
    lambda do |inner|
      lambda do |list|
        outer._(aggregate._(inner)._(list))
      end
    end
  end
end

def distance_point_ful_2
  lambda do |outer|
    lambda do |inner|
      outer * aggregate._(inner)
    end
  end
end

def distance_point_ful_1
  lambda do |outer|
    compose._(outer) * aggregate
  end
end

def distance_point_free
  gazinta._(aggregate) * compose
end

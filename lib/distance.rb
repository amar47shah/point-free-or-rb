require_relative './compose'
require_relative './aggregate'

def distance
  distance_point_ful_2
end

def distance_point_ful
  lambda do |outer|
    lambda do |inner|
      lambda do |list|
        outer.(aggregate.(inner).(list))
      end
    end
  end
end

def distance_point_ful_2
  lambda do |outer|
    lambda do |inner|
      outer * aggregate.(inner)
    end
  end
end

def distance_point_ful_1
  lambda do |outer|
    blackbird.(outer).(aggregate)
  end
end

def distance_point_free
  flip.(blackbird).(aggregate)
end

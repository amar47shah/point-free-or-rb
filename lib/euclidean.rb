require_relative './distance'

def euclidean
  distance._(square_root)._(square)
end

def square
  lambda do |x|
    x * x
  end
end

def square_root
  lambda do |x|
    x ** 0.5
  end
end

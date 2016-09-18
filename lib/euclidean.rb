require_relative './distance'

def euclidean
  distance.(square_root).(square)
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

require_relative './apply'
require_relative './fold'

def sum
  lambda do |list|
    fold._(add)._(0)._(list)
  end
end

def add
  lambda do |x|
    lambda do |y|
      x + y
    end
  end
end

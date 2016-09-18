require_relative './fold'

def sum
  lambda do |list|
    fold.(add).(0).(list)
  end
end

def add
  lambda do |x|
    lambda do |y|
      x + y
    end
  end
end

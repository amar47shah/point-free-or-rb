require_relative './flip'

def compose
  lambda do |outer|
    lambda do |inner|
      lambda do |x|
        outer.(inner.(x))
      end
    end
  end
end

def gazinta
  flip.(compose)
end

class Proc
  def * other
    compose.(self).(other)
  end

  def > other
    gazinta.(self).(other)
  end
end

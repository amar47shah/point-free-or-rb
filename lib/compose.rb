require_relative './apply'
require_relative './flip'

def compose
  lambda do |outer|
    lambda do |inner|
      lambda do |x|
        outer._(inner._(x))
      end
    end
  end
end

def gazinta
  flip._(compose)
end

class Proc
  def * other
    compose._(self)._(other)
  end

  def > other
    gazinta._(self)._(other)
  end
end

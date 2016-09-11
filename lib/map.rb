require_relative './apply'
require_relative './fold'

# map is defined in terms of fold.
def map
  lambda do |transform|
    lambda do |list|
      accumulate = ->(list_so_far) { ->(x) { list_so_far << transform._(x) } }
      fold._(accumulate)._([])._(list)
    end
  end
end

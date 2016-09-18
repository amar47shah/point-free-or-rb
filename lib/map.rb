require_relative './fold'

# map is defined in terms of fold.
def map
  lambda do |transform|
    lambda do |list|
      accumulate = ->(list_so_far) { ->(x) { list_so_far << transform.(x) } }
      fold.(accumulate).([]).(list)
    end
  end
end

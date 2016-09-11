require_relative './apply'
require_relative './head_and_tail'

def maximum
  lambda do |list|
    fail_on_empty! list
    list_head = head._(list)
    list_tail = tail._(list)
    fold._(larger)._(list_head)._(list_tail)
  end
end

def larger
  lambda do |x|
    lambda do |y|
      if x >= y
        x
      else
        y
      end
    end
  end
end

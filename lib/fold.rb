require_relative './apply'
require_relative './head_and_tail'

def fold
  lambda do |transform|
    lambda do |initial|
      lambda do |list|
        if list == []
          initial
        else
          list_head = head._(list)
          list_tail = tail._(list)
          transformed_head = transform._(initial)._(list_head)
          fold._(transform)._(transformed_head)._(list_tail)
        end
      end
    end
  end
end

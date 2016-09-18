require_relative './head_and_tail'

def fold
  lambda do |transform|
    lambda do |initial|
      lambda do |list|
        if list == []
          initial
        else
          list_head = head.(list)
          list_tail = tail.(list)
          transformed_head = transform.(initial).(list_head)
          fold.(transform).(transformed_head).(list_tail)
        end
      end
    end
  end
end

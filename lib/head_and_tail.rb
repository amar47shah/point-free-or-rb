# head and tail are needed to recurse over lists.
# They fail on the input [].
def head
  lambda do |list|
    fail_on_empty! list
    list[0]
  end
end

def tail
  lambda do |list|
    fail_on_empty! list
    list[1..-1]
  end
end

def fail_on_empty! list
  fail ArgumentError if empty?.(list)
end

def empty?
  lambda do |list|
    list == []
  end
end

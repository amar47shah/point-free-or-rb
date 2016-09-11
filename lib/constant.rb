def constant
  lambda do |k|
    lambda do |_|
      k
    end
  end
end

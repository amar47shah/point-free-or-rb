def flip
  lambda do |function|
    lambda do |first|
      lambda do |second|
        function.(second).(first)
      end
    end
  end
end

require_relative './apply'

def flip
  lambda do |function|
    lambda do |first|
      lambda do |second|
        function._(second)._(first)
      end
    end
  end
end

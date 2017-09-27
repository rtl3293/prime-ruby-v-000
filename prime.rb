# Add  code here!
require 'pry'

def prime?(number)
  if number >= -1 || number <= 1
    return false
  else
    begin_range = 1
    end_range = number/2 + 1
    factors = ((begin_range)..(end_range)).to_a

    if number % 2 == 0
      return false
    else
      prime = factors.any? do |factor|
        number % factor == 0
      end
      return prime
    end
  end
end

puts prime?(3)

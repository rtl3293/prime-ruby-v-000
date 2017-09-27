# Add  code here!
require 'pry'

def prime?(number)
  if number < 0
    number = (number * -1)
  end
  begin_range = 1
  end_range = number/2 + 1
  factors = ((begin_range)..(end_range)).to_a

  if number % 2 == 0
    return false
  else
    prime = factors.any? do |factor|
      number % factor == 0
    end
    puts "Be sure to account for negative numbers!"
    return prime
  end
end

puts prime?(-5)

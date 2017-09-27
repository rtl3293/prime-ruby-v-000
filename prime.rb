# Add  code here!
def prime?(number)
  if number < 0
    number = (number * -1)
    begin_range = number/2 -1
    end_range = number/-2 + 1
  else
    begin_range = number/-2 - 1
    end_range = number/2 + 1
  end
  factors = ((begin_range)..(end_range)).to_a
  binding.pry
  if number % 2 == 0
    return false
  else
    prime = factors.any? do |factor|
      number % factor == 0
    end
    return prime
  end
end

puts prime?(-5)

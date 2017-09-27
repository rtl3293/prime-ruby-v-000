# Add  code here!
def prime?(number)
  begin_range = number/-2 + 1
  end_range = number/2
  factors = [(begin_range)..(end_range)]
  if number % 2 == 0
    return false
  else
    prime = factors.any? do |factor|
      number % factor == 0
    end
    return prime
  end
end

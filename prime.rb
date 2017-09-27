# Add  code here!
def prime?(number)
  factors = [(number/-2)..(number/2)]
  if number % 2 == 0
    return false
  else
    prime = factors.any? do |factor|
      number % factor == 0
    end
    return prime
  end
end

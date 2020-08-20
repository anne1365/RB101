=begin
PROBLEM: given an integer, return the next highest 'featured number'.
A featured number is a multiple of seven, odd, and its digits occur once each

INPUT: integer
OUTPUT: integer (next greater featured number) or error msg if none exist

RULES: 
- ftd # odd, divisible by seven, contains only unique digits
- return value next ftd # greater than input int

ALGORITHM: 

initialize count variable - assign it result of input# / 7 + 1
initialize variable featured to hold featured #

loop - ntil featured number is > 10 digits long
  featured = 7 * count
  return featured if contains no duplicates & is odd
  otherwise increment count
end

if we make it out of loop, return "ERROR: No possible featured digit."

=end
def featured(num)
  count = num / 7 + 1
  featured = 0

  while featured.digits.size <= 10
    featured = 7 * count
    return featured if featured.digits.uniq == featured.digits && featured.odd?
    count += 1
  end

  "ERROR: No possible featured digit."
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_992) # -> There is no possible number that fulfills those requirements

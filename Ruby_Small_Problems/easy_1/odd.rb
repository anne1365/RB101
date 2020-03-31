=begin

UNDERSTANDING THE PROBLEM:
  INPUTS: one integer argument
  OUTPUTS: boolean
  RULES:
    - input integer may be positive, negative, or zero
    - we may assume integer input is valid
    - we want to know if absolute value of integer is odd
  MENTAL MODEL: method will accept one integer argument, and if
  abs value of integer modulo 2 is not 0 we will return true

EXAMPLES / TEST CASES: 
  puts is_odd?(2)    # => false
  puts is_odd?(5)    # => true
  puts is_odd?(-17)  # => true
  puts is_odd?(-8)   # => false
  puts is_odd?(0)    # => false
  puts is_odd?(7)    # => true

DATA STRUCTURE: 
input integer
output boolean

ALGORITHM / PSEUDOCODE:
START method (integer x)
  |integer| % 2 != 0 #return true
END

=end

def is_odd?(query_num)
  query_num.abs % 2 != 0 # OR query_num.remainder(2) != 0 

end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

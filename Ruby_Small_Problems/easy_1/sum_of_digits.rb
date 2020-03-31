=begin
PROBLEM: 
Write a method that takes one argument, a positive
integer, and returns the sum of its digits.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer
  OUTPUTS --> integer
  RULES:
    - integer must be positive
    - return value must be an integer
  MENTAL MODEL:
  Our method will convert the integer input into a string, split the
  string into chars, convert each char back into an integer, and sum these    

EXAMPLES / TEST CASES: 
  puts sum(23) == 5
  puts sum(496) == 19
  puts sum(123_456_789) == 45

DATA STRUCTURE: 
  INPUTS  --> integer --> string --> array
  OUTPUTS --> integer

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - convert input to string
    - split string into array of chars
    - convert chars into integers
    - sum array

  FORMAL:
    START method (integer x)
      x to string
      x to chars
      FOR EACH char {convert to integer}
      sum array
    END

=end

def sum(num)
  a = num.to_s.chars.map(&:to_i).sum
end
  
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
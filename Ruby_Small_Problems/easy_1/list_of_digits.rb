=begin
UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer
  OUTPUTS --> list of the digits in integer
  RULES: 
    - integer must be positive
    - numbers must be listed in same order as original integer
    - output must output list and return true
    - single digit argument output is an array with one element (the integer)
  MENTAL MODEL: the method will accept an integer argument, split the argument into individual digits, 
  and return a list of those digits in their original order

EXAMPLES / TEST CASES: 
  puts digit_list(12345) --> [1, 2, 3, 4, 5]
  puts digit_list(7) --> [7]
  puts digit_list(20394578) --> [2, 0, 3, 9, 4, 5, 7, 8]
  puts digit_list(20394578) --> [4, 4, 4]
  puts digit_list(-7) --> nil

DATA STRUCTURE: 
  INPUT  --> integer
  OUTPUT --> array

ALGORITHM / PSEUDOCODE:
  CASUAL: 
  - Validate number is positive
  - Convert int arg into string
  - Split string into individual parts (resulting in array)

  FORMAL:
  START method(integer x)
    if x >= 0
      x --> string
      x.split
    end
  END   

=end

def digit_list(num)
  if num >= 0
    temp = num.to_s.chars#.map(&:to_i) <-- SYNTACTIC SUGAR FOR LINE 43
    temp.map { |x| x.to_i }
  end
end

pp digit_list(12345)
pp digit_list(7)
pp digit_list(20394578)
pp digit_list(20394578)
pp digit_list(-7)
=begin
THE PROBLEM: 
Write a method that takes one argument, a positive
integer, and returns a string of alternating 1s and 0s, always
starting with 1. The length of the string should match the given 
integer.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> positive integer (x)
  OUTPUTS --> string of alternating 1's and 0's
  RULES:
    - returned string will be x digits long
    - returned string must start w/ 1
  MENTAL MODEL:
  Given a positive integer, we'll initiate a counter variable (=1) and an empty string. 
  We'll loop x number of times - if counter is less than x & odd, add a 1 to string, 
  if counter is less than x and even, add 0 to string

EXAMPLES / TEST CASES: 
  puts stringy(6) == '101010'
  puts stringy(9) == '101010101'
  puts stringy(4) == '1010'
  puts stringy(7) == '1010101'

DATA STRUCTURE: 
  INPUTS  --> integer
  OUTPUTS --> string

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - set counter variable
    - set empty string
    - break if counter = x
    - if counter odd add "1" to string
    - if counter is even add "0" to string
    - increment counter

  FORMAL:
    START method(integer x)
      SET counter = 1
      SET string = ""
      break unless counter <= x
      IF counter is odd 
        string << "1"
      ELSE
        string << "0"
      END
      string
    END
    
=end

def stringy(int, start = 1)
  str = ""
  if start == 1
    loop do
      break unless str.length < int
      if str.length.even?
        str << "1"
      else 
        str << "0"
      end
    end
  else #----------------------------> FURTHER EXPLORATION (works though awful)
    loop do
      break unless str.length < int
      if str.length.even?
        str << "0"
      else 
        str << "1"
      end
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''
puts stringy(1) == '1'

puts stringy(6, 0)
puts stringy(4, 0)
puts stringy(1, 0)

=begin
LS ANSWER
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
=end

=begin
PROBLEM:
Write a program that solicits 6 numbers from the user, then
prints a message that describes whether or not the 6th number
appears amongst the first 5 numbers.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> six digit-strings - user inputted numbers
  OUTPUTS --> message containing array of first 5 enetered inputs
  RULES: 
    - first five numbers are pushed to a data structure we can search
    - search will be performed on an array of integers
  MENTAL MODEL: 
  We will prompt the user to input an integer a total of six times.
  During each of the first five times, we will push the input to an array
  as an integer (converting from string). After collecting the sixth input,
  we will check to see if our array contains it. If it does, we will display
  an affirmative message to user; if not, we will tell user that the sixth
  input does not appear among the first five inputs.

EXAMPLES / TEST CASES: 
  - [25, 15, 20, 17, 23] - SIXTH = 17 --> 17 does appear
  - [25, 15, 20, 17, 23] - SIXTH = 18 --> 18 does NOT appear

DATA STRUCTURE: 
  INPUTS  --> strings
  OUTPUTS --> string including array of integers

ALGORITHM / PSEUDOCODE:
  CASUAL:
  - prompt user for integer -- save as var -- push var to array a as int (X5 TIMES)
  - prompt user for integer i6 -- save as var
    - check whether a includes i6
      - if yes --> affirmative message
      - if no  --> array does not contain i6

  FORMAL:
    START 
      SET new array

      PRINT "Enter num: "
      GET num1
      array << num1

      PRINT "Enter num: "
      GET num2
      array << num2

      PRINT "Enter num: "
      GET num3
      array << num3

      PRINT "Enter num: "
      GET num 4
      array << num4

      PRINT "Enter num: "
      GET num5
      array << num5

      PRINT "Enter num: "
      GET  last_number 
      
      IFarray contains last_number
        PRINT "array has it"
      ELSE 
        PRINT "array doesn't have it"
      END
    END

=end

def prompt(position)
  puts "==> Enter the #{position} number: "
end

def input
  gets.chomp.to_i
end

array = []

prompt('first')
array << input()
prompt('second')
array<< input()
prompt('third')
array<< input()
prompt('fourth')
array<< input()
prompt('fifth')
array<< input()
prompt('last')
last_number = input()

if array.include?(last_number)
  puts "==> The number #{last_number} appears in #{array}."
else
  puts "==> The number #{last_number} does not appear in #{array}."
end



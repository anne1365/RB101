=begin
PROBLEM:
Write a method that takes one argument, an array containing
integers, and returns the average of all numbers in the array.
The array will never be empty and the numbers will always 
be positive integers.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array
  OUTPUTS --> integer
  RULES:
    - array will never be empty
    - array will always contain positive integers
  MENTAL MODEL: 
    Method will accept an array or positive integers. We will iterate through
    the array, adding each element to a variable we set at beginning of method. After
    iterating through whole array we will divide the sum by the length of the array.

EXAMPLES / TEST CASES: 
  puts average([1, 5, 87, 45, 8, 8]) == 25
  puts average([9, 47, 23, 95, 16, 52]) == 40
  
DATA STRUCTURE: 
  INPUTS  --> array
  OUTPUTS --> integer

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - set variable x = 0
    - iterate through array:
      - for each element add the value to x
    - divide x by the length of the array

  FORMAL:
    START method(array a)
      SET variable x = 0
      FOR EACH element in a
        x += a
      END
      x / length of a
    END

=end

def average(array)
  sum = 0
  array.each { |x| sum += x }
  sum/ array.length #--------------- ------> FURTHER EXPLORATION - 'sum.to_f' would return avg as float
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
   
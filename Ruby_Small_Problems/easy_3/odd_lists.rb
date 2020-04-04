=begin
PROBLEM:
Write a method that returns an Array that
contains every other element of an Array that 
is passed in as an argument. The values in the returned 
list should be those values that are in the 1st, 3rd,
5th, and so on elements of the argument Array.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array of values of whatever type
  OUTPUTS --> every other array element
  RULES:
    - elements beng returned are the elements w/ odd indexes 
  MENTAL MODEL:
  Method will take the array provided and return a new array containing
  the elements from the original array that were in odd index positions

EXAMPLES / TEST CASES: 

DATA STRUCTURE: 
  INPUTS  --> array
  OUTPUTS --> array

ALGORITHM / PSEUDOCODE:
  - given an array, we will iterate through each index
  - if the index is odd, we will push that element to a new array
  - if not, we won't do anything with it
  - we'll return the array

=end

def oddities(array)
  odd_array = []
  array.each_index do |x| 
    if x.even? 
      odd_array << array[x]
    end
  end
  odd_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
=begin ------------------------------------------------------------------------
PROBLEM:
Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array and search value 
  OUTPUTS --> boolean 
  QUESTIONS:
    - Are there any types of search values that would be problematic for
      implementation?
  IDEAS:
  - iteration through given array and returning true if el == search value
  - Array#any? method -- just said we couldn't use include ;)
  - LS solutions include each loop and find_index

=end # ------------------------------------------------------------------------

def include?(array, search_value)
  array.any? { |el| el == search_value }
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false


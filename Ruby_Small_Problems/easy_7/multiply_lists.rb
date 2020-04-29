=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new
Array that contains the product of each pair of numbers from the arguments that have the same index. You may
assume that the arguments contain the same number of elements.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> two arrays containing same number of integer elements
  OUTPUTS --> new array containing products of the two input arrays, element by element
  QUESTIONS: 
    - should it be assumed that input array only contains integers?
    - should it be assumed that the arrays do not contain any nil elements?
  RULES:
    EXPLICIT:
      - returned array is a new array
      - inputted arrays have same number of elements
  IDEAS:
    - Array#each_with_index{}

ALGORITHM / PSEUDOCODE:
  - initialize new array
  - using each with index, multiply each of the first elements of the two inputted arrays together
  - push result to new array
  - repeat for every element in the arrays
  - return the new array

=end # ----------------------------------------------------------------------------------------------------------


def multiply_list(a1, a2)
  arr = []
  a1.each_with_index {|el, i| arr << (el * a2[i])}
  arr
end

#FURTHER EXPLORATION
def multiply_list(a1, a2)
  a1.zip(a2).map {|a| a.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

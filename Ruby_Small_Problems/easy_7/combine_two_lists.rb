=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all
elements from both Array arguments, with the elements taken in alternation.
You may assume that both input Arrays are non-empty, and that they have the same number of elements.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> two arrays
  OUTPUTS --> a new, single array containing the elements from input arrays, like so: [a,b], [1,2] --> [a,1,b,2]
  QUESTIONS:
    - are there any data types that would prove problematic?
  RULES:
    EXPLICIT:
      - we are to assume array inputs are not empty and contain same # of elements
      - we are returning a new array object
    IMPLICIT:
      - the first element of the first inputted array argument will be the first element added to new array
  IDEAS:

DATA STRUCTURE:
  INPUTS  -->
  OUTPUTS -->

ALGORITHM / PSEUDOCODE:

=end # ----------------------------------------------------------------------------------------------------------


def interleave(arr_one, arr_two)
  interleaved_arr = []
  counter = 0

  until counter == arr_one.size
    interleaved_arr << arr_one[counter] << arr_two[counter]
    counter += 1
  end

  interleaved_arr
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
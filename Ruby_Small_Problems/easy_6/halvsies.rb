=begin ------------------------------------------------------------------------
PROBLEM:
Write a method that takes an Array as an argument, and returns two Arrays
(as a pair of nested Arrays) that contain the first half and second half of the
original Array, respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> 
  OUTPUTS -->
  QUESTIONS:
  RULES:
    EXPLICIT:

    IMPLICIT:
  IDEAS:
    - (array length / 2.0).round(half: :up) --> rounds up

=end # ------------------------------------------------------------------------


def halvsies(arr)
  first_half = arr.first((arr.size / 2.0).ceil)
  second_half = (arr.last(arr.size / 2))
  [first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

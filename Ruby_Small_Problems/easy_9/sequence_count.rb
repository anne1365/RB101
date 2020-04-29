=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first
number of a sequence that your method will create. The method should return an Array that contains the same
number of elements as the count argument, while the values of each element will be multiples of the starting
number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can
be any integer value. If the count is 0, an empty list should be returned.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer count representing number of elements to output, integer representing first # is sequence
  OUTPUTS --> array w/ count elements of elements that are multiples of starting #
  QUESTIONS:
  RULES:
    EXPLICIT:

    IMPLICIT:
  IDEAS:

EXAMPLES / TEST CASES:

DATA STRUCTURE:
  INPUTS  -->
  OUTPUTS -->

ALGORITHM / PSEUDOCODE:
  - initialize array - range of 1-count
  - array.map - for each iteration multiply by second input integer

=end # ----------------------------------------------------------------------------------------------------------


def sequence(count, n)
  (1..count).map {|el| el * n }
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
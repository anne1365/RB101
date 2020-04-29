=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the
correct number of each fruit.

UNDERSTANDING THE PROBLEM:
  INPUTS  -->
  OUTPUTS -->
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

=end # ----------------------------------------------------------------------------------------------------------


def buy_fruit(list)
  list.each_with_object([]) { |obj, arr| obj[1].times {arr << obj[0]} }
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
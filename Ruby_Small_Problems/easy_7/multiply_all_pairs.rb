=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new
Array that contains the product of every pair of numbers that can be formed between the elements of the two
Arrays. The results should be sorted by increasing value.You may assume that neither argument is an empty Array.

UNDERSTANDING THE PROBLEM:
  IDEAS:
    - Array#product
    - while iterating, inject(:*)
    - with new array, Array#sort

=end # ----------------------------------------------------------------------------------------------------------


def multiply_all_pairs(a1, a2)
  (a1.product(a2).map {|a| a.inject(:*)}).sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
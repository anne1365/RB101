=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and
the argument.
You may assume that the argument will always be a valid integer that is greater than 0.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer
  OUTPUTS --> array of 1..integer

=end # ----------------------------------------------------------------------------------------------------------

def sequence(num)
  Array(1..num)
end


#FURTHER EXPLORATION
def sequence(num)
  num > 1 ? Array(1..num) : Array(num..1)
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0) == [0, 1]
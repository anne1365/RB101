=begin
PROBLEM: 
The || operator returns a truthy value if either or
both of its operands are truthy, a falsey value if both
operands are falsey. The && operator returns a truthy value
if both of its operands are truthy, and a falsey value if
either operand is falsey. This works great until you need
only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a method named xor that takes
two arguments, and returns true if exactly one of its arguments
is truthy, false otherwise.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> two arguments that could return true or false
  OUTPUTS --> true (if ONE arg is true) or false 
  RULES:
    - method returns boolean
  MENTAL MODEL:
  Method will accept two arguments as paramenters. If arg1 || arg2 is true
  and arg1 && arg2 is not true, we'll return true. 

EXAMPLES / TEST CASES: 
  xor?(5.even?, 4.even?) == true
  xor?(5.odd?, 4.odd?) == true
  xor?(5.odd?, 4.even?) == false
  xor?(5.even?, 4.odd?) == false

DATA STRUCTURE: 
  INPUTS  -->
  OUTPUTS -->

ALGORITHM / PSEUDOCODE:


=end

def xor?(arg1, arg2)
  (arg1 || arg2) && !(arg1 && arg2)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

=begin
FURTHER EXPLORATION
- a ruby method that accepts a block or a string, but not both (when
  presence of one of the two is required)

- the xor method doesn't perform short circuit operations, and it
  wouldn't make sense for it to be. || only has to evaluate the second 
  argument if the first is false, and && only has to evaluate the second
  argument if the first is true. 
  
  In the case of xor, if the first argument
  is true, we need to know the second isn't, and if the first argument is
  false, we need to know whether the second argument is true. 
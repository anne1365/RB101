=begin
PROBLEM: Write a method that searches for all multiples of 3 or 5 that lie between 1 and some
other number, and then computes the sum of those multiples. For instance, if the supplied
number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
You may assume that the number passed in is an integer greater than 1.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> number greater than 0
  OUTPUTS --> number - sum of all multiples of 3 or 5 between 1 and input number
  QUESTIONS:
    - Does multiples of 3 or 5 mean xor?
    - How should method respond to non-integer inputs?
    - How should we respond to multiples of both 3 and 5?
  RULES:
    EXPLICIT:
      - input must be number above one
      - return value must be integer
    IMPLICIT:
      - multiples of both 3 and 5 are not counted twice
      - multiples may include any number up to and including the inputted number

EXAMPLES / TEST CASES: 
  multisum(3) == 3
  multisum(5) == 8
  multisum(10) == 33
  multisum(1000) == 234168

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - empty array will be initiated
    - for each number x from one to inputted integer, if x is evenly divisible
      by 3 or 5 it will be pushed to the array
    - we will call array.sum (this will be the last line and thus the value returned)
=end

def multisum(num)
  array = (1..num).to_a
  result = []

  for n in array
    result << n if (n % 3 == 0) || (n % 5 == 0)
  end
  
  result.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


=begin
LS Solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end
=end

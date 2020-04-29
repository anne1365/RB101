=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is
divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

UNDERSTANDING THE PROBLEM:
  INPUTS  --> starting number & ending number
  OUTPUTS --> printed string of all numbers between start and end - if a number in this range is divisible by 3,
              'Fizz' will be printed instead of the number; if a number in the range is divisible by 5, 'Buzz'
              will be printed instead of the number, and if a number in the range is divisible by both 3 and 5,
              'FizzBuzz' will be printed
  QUESTIONS:
    - what if input(s) is/are not integers?
  RULES:
    EXPLICIT:
      - numbers between inputs will be printed
      - if a number n
          - % 3 & 5 == 0 --> 'FizzBuzz'
          - % 3 == 0 --> 'Fizz'
          - % 5 == 0 --> 'Buzz'
      - if n is not divisible by 3 or 5, it is printed
    IMPLICIT:
      - all printed numbers are separated by commas
  IDEAS:

ALGORITHM / PSEUDOCODE:
  - initialize array using start and end as parameters for a range - array should contain the whole range
  - initialize a string to hold printed value
  - for each element in the array, we'll check if the number is 
      - divisible by 3 & 5, or
      - divisible by 3, or
      - divisible by 5
    in which cases we'll concatenate the proper word to the string, otherwise we'll concatenate the number(+ ',')
  - last line we'll return the string

=end # ----------------------------------------------------------------------------------------------------------


def fizzbuzz(first, last)
  arr = Array(first..last)
  result = []

  arr.each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      result << 'FizzBuzz'
    elsif num % 3 == 0
      result << 'Fizz'
    elsif num % 5 == 0
      result << 'Buzz'
    else
      result << "#{num}"
    end 
  end
  
  result.join(', ')
end


p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

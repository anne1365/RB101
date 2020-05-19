=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

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
STRING_DIGITS = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}

def word_to_digit(str)
  p str.split(/\s/)
  arr = str.split(/\W\s/).map do |el|
    if STRING_DIGITS.keys.include?(el)
      el = STRING_DIGITS[el]
    else
      el
    end
  end
  arr.join(' ')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

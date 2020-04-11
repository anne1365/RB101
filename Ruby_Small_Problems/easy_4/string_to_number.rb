=begin
PROBLEM:
The String#to_i method converts a string of numeric characters
(including an optional plus or minus sign) to an Integer.
String#to_i and the Integer constructor (Integer()) behave
similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits,and returns the
appropriate number as an integer. You may not use any of the
methods mentioned above.

For now, do not worry about leading + or - signs, nor should you
worry about invalid characters; assume all characters will be
numeric.

You may not use any of the standard conversion methods available
in Ruby, such as String#to_i, Integer(), etc. Your method should
do this the old-fashioned way and calculate the result by analyzing
the characters in the string.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string
  OUTPUTS --> integer
  QUESTIONS:
    - how do we declare something is a number if we've validated it's
      a number but can't use #to_i?
  RULES:
    EXPLICIT:
      - we're assuming string will not contain '+' or '-'
      - we're assuming all string characters will be numeric
      - we cannot use methods like #to_i or Integer()
      - method takes a string of digits, and returns the string
        converted into an integer
    IMPLICIT:

EXAMPLES / TEST CASES: 
  string_to_integer('4321') == 4321
  string_to_integer('570') == 570

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - separate string into chars
    - array of chars will go through a case statement that converts the
      string digit to an integer, resulting in an array of integers
    - how to convert an array of integers into a number...

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string_number)
  tmp = string_number.chars.map! { |char| DIGITS[char] }
  tmp.inject{|result, element| result * 10 + element}
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570



=begin
My original solution included a mthod with a case statement returning the
proper digit based on the character passed in. The LS Solution is a good reminder
that any constant values bing utilized in a program are better designated
to a constant where they can be concisely enumerated, and then easily accessible
and immutable*. It's also a good reminder that hashes are a great tool to use when 
conversion is the goal.

*technically not, but they should be
=end


#FURTHER EXPLORATION
HEX_DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 
  'f' => 15
}

def hexadecimal_to_integer(string_number)
  tmp = string_number.downcase!.chars.map! { |char| HEX_DIGITS[char] }
  sum = 0
  counter = tmp.size

  tmp.map! do |digit| 
    counter -= 1
    sum += (digit * (16 ** counter))
  end

  tmp.last
end

p hexadecimal_to_integer('4D9f')


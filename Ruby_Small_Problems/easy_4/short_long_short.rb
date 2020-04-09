=begin
PROBLEM:
Write a method that takes two strings as arguments,
determines the longest of the two strings, and then
returns the result of concatenating the shorter string,
the longer string, and the shorter string once again.
You may assume that the strings are of different lengths.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> two strings if different lengths
  OUTPUTS --> string - short string + log string + short string
  QUESTIONS:
    - What if input is not a string?
    - is there anything to regard here in terms of case-sensitivity?
    - if one of the string arguments were a space rather than an empty
      string, would the concatenated product be padded by spaces on
      either side?
  RULES:
    EXPLICIT:
      - arguments must be strings
      - one string must be (and is assumed to be) the longer
      - return value is a string - the short string string concatenated
        to the long string concatenated to the short string again
    IMPLICIT:
      - we aren't outputting anything to the user
      - given one empty argument and one string, the string is returned
      - there are no spaces between the concatenated values

EXAMPLES / TEST CASES: 
  short_long_short('abc', 'defgh') == "abcdefghabc"
  short_long_short('abcde', 'fgh') == "fghabcdefgh"
  short_long_short('', 'xyz') == "xyz"

ALGORITHM / PSEUDOCODE:
  CASUAL: given two strings, we will set an empty string to capture the 
  concatenated string. A conditional statement will determine that if the length
  of the first string < length of the second, we will concatenate first second first
  to the empty string. If the opposite is true, we will concatenate second first
  second to the empty string. Finally, we will return the string.
=end


def short_long_short(first_string, second_string)
  result = ''

  if first_string.length < second_string.length
    result << first_string + second_string + first_string
  else
    result << second_string + first_string + second_string
  end

  result
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

=begin
LS Answer

def short_long_short(string1, string2)
  if string1.length > string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

^^ more concise than what I had
=end
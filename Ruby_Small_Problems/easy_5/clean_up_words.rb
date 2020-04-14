=begin
PROBLEM:
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic
characters, write a method that returns that string with all of the non-alphabetic characters
replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only
have one space in the result (*the result should never have consecutive spaces).

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string containing lower case letters and non-alphabetic characters
  OUTPUTS --> string with all non-alphabetic characters replaced by spaces*
  QUESTIONS:
    - are inputs always lower-cased, or do we need to ensure the output is converted to all lowercase?
    - is regex the most effective way to do this or is there a way we can use gsub? 
    - are we returning the original string or a copy of it?
  RULES:
    EXPLICIT:
      - string input should contain words and non-alphabetic characters
      - output string should contain words, with non-alphabetic characters
        replaced by spaces
      - duplicate spaces should be removed
      - character matching should be case-insensitive
    IMPLICIT:
      - if original string begins or ends with a special character, the spaces these
        characters are replaced with should be preserved (only one) which would result
        in leading or trailing white space

EXAMPLES / TEST CASES: 
  cleanup("---what's my +*& line?") == ' what s my line '

DATA STRUCTURE: 
  INPUTS  --> string
  OUTPUTS --> string

ALGORITHM / PSEUDOCODE:
- divide string into chars (turning it into array)
- iterate through array
- if a character is a letter, return letter
- otherwise, set the character equal to a space
- join the resulting array
- split it to remove spaces
- join string with one space (effectively removing any duplicate spaces from before)
=end


def cleanup(str)
  arr = str.chars
  
  arr.map! do |char|
    (char.match?(/[a-z]/i)) ? char : char = ' '
  end
  
  arr.join.squeeze(' ')
end

p   cleanup("---what's my +*& line?") == ' what s my line '

=begin
LS Solution 

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end


the regular expression here matches any character that isn't an upper or lower case
letter, and the '/i' specifies case insensitivity
=end

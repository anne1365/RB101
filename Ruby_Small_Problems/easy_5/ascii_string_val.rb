=begin
PROBLEM:
Write a method that determines and returns the ASCII string value
of a string that is passed in as an argument. The ASCII string value
is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

UNDERSTANDING THE PROBLEM:
  INPUTS  -->
  OUTPUTS -->
  QUESTIONS:
  RULES:
    EXPLICIT:

    IMPLICIT:

EXAMPLES / TEST CASES: 
  ascii_value('Four score') == 984
  ascii_value('Launch School') == 1251
  ascii_value('a') == 97
  ascii_value('') == 0

DATA STRUCTURE: 
  INPUTS  -->
  OUTPUTS -->

ALGORITHM / PSEUDOCODE:
  CASUAL:

  FORMAL:

=end

def ascii_value(string)
  string.chars.inject(0) { |sum, char| sum += char.ord }
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
p ascii_value('hi there') == 777


=begin
PROBLEM:
Write a program that will ask a user for an input of a word
or multiple words and give back the number of characters.
Spaces should not be counted as a character

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string - word or multiple words
  OUTPUTS --> message relaying number of characters in inputted string
  RULES:
    - spaces should not be counted as characters
  MENTAL MODEL:
  We will ask the user for a string, and save it to a variable.
  We'll nondestructively delete spaces from the string and determine the length
  of this string, saving the integer to a variable. We'll report
  the integer length of the string to the user.

EXAMPLES / TEST CASES: 
  Input: walk            || Output: 4
  Input: walk, don't run || Output: 13

DATA STRUCTURE: 
  INPUTS  --> string
  OUTPUTS --> string

ALGORITHM / PSEUDOCODE:
  CASUAL:

  FORMAL:
    START
      PRINT "type string"
      GET string SET
      SET integer length = (string sans spaces).length
      PRINT original string has length characters
    END

=end

puts "Please enter a string: "
string = gets.chomp

string_length = string.delete(' ').length

puts "There are #{string_length} characters in \"#{string}\"."
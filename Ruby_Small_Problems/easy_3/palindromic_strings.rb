=begin
PROBLEM: Write a method that returns true if the string passed
as an argument is a palindrome, false otherwise. A palindrome
reads the same forward and backward. For this exercise, case
matters as does punctuation and spaces.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> a string of characters (letters or numbers)
  OUTPUTS --> true if string is a palindrome, false otherwise
  RULES:
    - case matters (Pop != poP)
    - punctuation matters (pop! != !pop)
  MENTAL MODEL:
  Method will take a string argument, and return true if the
  string argument is the same when reversed, false otherwise

EXAMPLES / TEST CASES: 

DATA STRUCTURE: 
  INPUTS  --> string
  OUTPUTS --> boolean

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - check whether string argument is the same when it is 
      - divided into chars
      - flipped
      - joined
    - return true or false

=end

def palindrome?(input)
  input == input.reverse
end

def real_palindrome?(input)
  p input.downcase
  p input.downcase.scan(/\d+\w+/)
  p input.downcase.scan(/\d+\w+/).join
  palindrome?(input.downcase.scan(/\d+\w+/).join)
end

#FURTHER EXPLORATION - reverse method can be used on arrays too,
#though we would probably want to change variable names if arrays
#were an additional potential input

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p real_palindrome?("Madam")
p real_palindrome?("Pop!")
p real_palindrome?("Po-p!")

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

=begin
LS ANSWER
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

QUESTIONS I HAVE FROM MY SOLUTION - if scan returns a one element array (as it
appears to), how did any of my tests pass? 

OHHH they didn't. At least not because we did something right.
Scan produces a one element array, and so reversed this array is obviously exactly
the same. Nothing to do with the element inside. It got you because the
first eight tests just happen to be palindromes so we were getting false positives. Oof
=end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(00000034543000000) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true


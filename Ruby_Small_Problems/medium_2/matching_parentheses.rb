=begin ----------------------------------------------------------------------------------------------------------
PROBLEM: method should take a string argument and return true if the
parentheses are matched, false otherwise

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string
  OUTPUTS --> boolean
  
  QUESTIONS:  What action should we take towards invalid inputs?
  
  RULES:
    EXPLICIT:
      - balanced parentheses are those that occur in matching pairs
      - balanced pairs must start with '(', not ')'
    IMPLICIT:
      - strings without parentheses return true
  
  IDEAS:
    - counting parantheses - method returns true if #'(' == #')'
      -- this is a good initial filter but it's fallible -> 
      ")) ((" would return true
    - the tricky part here is that the number of each type of
      parenthesis can be equal without the parentheses being balanced
    - recursion?? what about the scenario where the first parenthesis is ')' though..
    - array of flags to represent open parentheses that have and haven't been closed?
      how to reference this so we can update it though?

  ALGORITHM / PSEUDOCODE:
    - if first instance of '(' or ')' is ')' return false 
    - if last instance of parentheses is '(' return false
    - if number of '(' != ')' return false

      exceptions considering above conditions:

      - "(    (     )    )    )    (    (    )"
         L1   L2   R1   R2   R3   L3   L4   R4
          O    O    O    O    X    X    O    O

    - if string doesn't contain '(' or ')', return true
    - initiate array for flags 
    - iterate through the string
      - if a character is not '(' or ')', next
      - if a character is '(' , append false flag to flags array
      - if a character is ')', set flag to true
      - return false (at this point we assume we've encountered a '(' but not a matching ')')  
      
    -if we scan a given string for parentheses and then split it by "()", rejoin and repeat, 
     a matched string will be empty after a maximum of string length/2 times, if it's not, it
     isn't matched

=end # ----------------------------------------------------------------------------------------------------------

def balanced?(str)
  test_str = str.scan(/[()]/).join
  (str.size / 2).times { test_str = test_str.split("()").join }
  test_str.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

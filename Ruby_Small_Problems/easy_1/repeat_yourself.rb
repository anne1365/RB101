=begin
UNDERSTAND THE PROBLEM
  - Inputs: 
      - string (message to repeat)
      - positive integer (# times to repeat)
  - Outputs
      - a string printed the specified number of times
  RULES: 
  - Integer must be positive
  - Method must take two arguments
  MENTAL MODEL: Given two arguments, the string to repeat, and the
  number of time to repeat it, we will display the string the number
  of time the user specifies. 

EXAMPLES / TEST CASES: 
  repeat('Hello', 1) --> 'Hello'
  repeat('Hello', 0) --> Error # must be >0
  repeat('Hello', -1) --> Error # must be >0
  repeat('Hello') --> Error too few args
  repeat(4) --> Error too few args
  repeat(" ", 1) --> " "

DATA STRUCTURE
  - Input a string and integer
  - Output a string

ALGORITHM 
--> when user calls method w/ string and integer x, a .times loop
    prints the string x times

START repeat(string x, integer y)
  y times
    PRINT x
  END
END
=end

def repeat(message = "No message!", repeat_num = 5)
  return "Error: number must be greater than zero." unless repeat_num > 0
  repeat_num.times do 
    puts message
  end
end

repeat("Hi", 5)
p repeat('Hi', 0)
p repeat("Hi", -2)
repeat





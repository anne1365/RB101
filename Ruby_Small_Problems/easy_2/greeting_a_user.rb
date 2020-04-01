=begin
UNDERSTANDING THE PROBLEM:
  INPUTS  --> user's name
  OUTPUTS --> greeting to user
  RULES:
    - we will need a method that detects a '?' at the end of input string
  MENTAL MODEL:
  We will prompt user for name, save name to variable. We'll check if name ends with '!'. If so, 
  we'll shout a greeting. If not, we will greet user calmly, like a normal person.

EXAMPLES / TEST CASES: 
  Input: 'Bob!' Output: 'HELLO BOB. WHY ARE WE SCREAMING?' 
  Input: 'Bob'  Output: 'Hello Bob.'

DATA STRUCTURE: 
  INPUTS  --> string
  OUTPUTS --> string

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - prompt user for name - save to var
    - if name ends with ! - print scream greeting
    - else print normal greeting

  FORMAL:
  START
    PRINT "name?"
    GET name
    IF name ends with !
      puts "GREETING"
    ELSE
      puts "greeting"
    END
  END

=end

puts "What is your name?"
name = gets.chomp

if name.end_with? '!'
  name.chomp!(separator = '!') #name = name.chomp(separator='!')  ---- FURTHER EXPLORATION
  # name = name.chop   --> HERE EQUIV TO 'name.chop!'
  # MY ORIGINAL ANSWER --> name.delete_suffix!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
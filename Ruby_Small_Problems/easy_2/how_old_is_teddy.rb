=begin
PROBLEM:
Build a program that randomly generates and prints
Teddy's age. To get the age, you should generate a
random number between 20 and 200

UNDERSTANDING THE PROBLEM:
  INPUTS  --> none
  OUTPUTS --> string containing randomly generated number
  RULES:
    - calling method will result in desired output - no args needed
  MENTAL MODEL: when the method is called, a string will be displayed
  containing a randomly selected number between 20 and 200

EXAMPLES / TEST CASES: N/A

DATA STRUCTURE: 
  INPUTS  --> N/A
  OUTPUTS --> String

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - set variable = to random number between 20 and 200
    - interpolate variable in string to output to console

  FORMAL:
    START method
      SET x = random number between 20 and 200
      PRINT "Teddy is x years old!"
    END

=end

# def teddy_age
#   ages = Range.new(20, 200).to_a
#   puts ("Teddy is #{ages.sample} years old!")
# end

=begin
LS ANSWER
age = rand(20..200)
puts "Teddy is #{age} years old!"

--> Problem did not ask for method, just program. 
--> Kernel#rand is a helpful method for this program
=end

#FURTHER EXPLORATION
puts "What is your name?"
name = gets.chomp

if name.empty? 
  name = "Teddy"
end

age = rand(20..200)
puts "#{name.capitalize} is #{age} years old!"
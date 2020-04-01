=begin
PROBLEM:
Write a program that prompts the user for two positive integers,
and then prints the results of the following operations on those
two numbers: addition, subtraction, product, quotient, remainder,
and power. Do not worry about validating the input.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> two digit-strings
  OUTPUTS --> string messages of mathematical ops we performed
  RULES:
    - we're only working with integers
  MENTAL MODEL: 
  We will prompt user for two numbers and, after coverting the strings to
  integers and doing the math, return a message containing the numbers
  used in all of our operations. 

EXAMPLES / TEST CASES: 

DATA STRUCTURE: 
  INPUTS  --> strings
          --> integers
  OUTPUTS --> strings
 
ALGORITHM / PSEUDOCODE:
  CASUAL:
    - prompt user for two integers - save these as vars
    - set variables for + - * / % ** equal to numbers performing those ops
    - print message reporting these results w/ proper formatting

=end

puts "==> Enter the first number: "
first_num = gets.chomp.to_f

puts "==> Enter the second number: "
second_num = gets.chomp.to_f

add       = first_num + second_num
subtract  = first_num - second_num
multiply  = first_num * second_num
divide    = first_num / second_num
remainder = first_num % second_num
power     = first_num ** second_num

puts "==> #{first_num} + #{second_num} = #{add}"
puts "==> #{first_num} - #{second_num} = #{subtract}"
puts "==> #{first_num} * #{second_num} = #{multiply}"
puts "==> #{first_num} / #{second_num} = #{divide}"
puts "==> #{first_num} % #{second_num} = #{remainder}"
puts "==> #{first_num} ** #{second_num} = #{power}"

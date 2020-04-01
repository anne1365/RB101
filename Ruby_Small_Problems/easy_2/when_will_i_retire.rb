=begin
PROBLEM: 

UNDERSTANDING THE PROBLEM:
  INPUTS  --> 2 strings (user age and user retirement age)
  OUTPUTS --> string containing current year, retirement year, and # of years of work to go
  RULES: 
    - we're working with integers throughout this problem
  MENTAL MODEL: 
  We'll prompt user for age (and save value), and desired retirement age (we'll save this value too).
  We'll convert these inputs to integers, and subtract age from desired reitirement age to get years of work remaining. 
  We'll add years of work remaining to current year, then output a message with all of this info. 

EXAMPLES / TEST CASES: 
  - age 30/retirement age 70 - year 2016/ retiring year 2056

DATA STRUCTURE: 
  INPUTS  --> strings
  OUTPUTS --> string message

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - prompt user for age - save val
    - prompt user for desired retirement age - save val
    - get years of work remaining = retirement age - age
    - get retirement year = current year + years of work remaining
    - output interpolated string containing this information

  FORMAL:
  START
    PRINT "age?"
    GET age

    PRINT "retirement age?"
    GET retirement_age

    SET years_to_retirement = retirement_age - age
    SET retirement_year = current_year + years_to_retirement

    PRINT "It's [current year]. You will retire [retirement_year]."
    PRINT "You only have [years_to_retirement] to go!"
  END

=end

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - age
retirement_year = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} years of work to go!"

#Time class useful here 
#Time.now --> shows current date, time, and time zone
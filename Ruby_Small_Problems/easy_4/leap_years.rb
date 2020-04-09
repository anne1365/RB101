=begin
PROBLEM:
In the modern era under the Gregorian Calendar, leap years
occur in every year that is evenly divisible by 4, unless
the year is also divisible by 100. If the year is evenly
divisible by 100, then it is not a leap year unless the year
is evenly divisible by 400.
Assume this rule is good for any year greater than year 0.
Write a method that takes any year greater than 0 as input,
and returns true if the year is a leap year, or false if it
is not a leap year.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> year greater than 0
  OUTPUTS --> true or false
  QUESTIONS:
    - what if input is something other than a number?
  RULES:
    EXPLICIT:
      - leap years occur every year that is divisible by 4
        and not divisible by 100, unless it is also divisible by 400
      - rule is good for any year > 0
      - returns true if year is a leap year, false otherwise

=end

def leap_year?(year)
  a = (year % 4 == 0)
  b = (year % 100 == 0)
  c = (year % 400 == 0)
  
  if year > 1752
  (c) || (a && !b)
  else
    a
  end  
end

p leap_year?(2016)== true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100)== true
p leap_year?(400) == true


=begin
PROBLEM:
Write a method that takes two arguments, a positive integer
and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary.
If the boolean is false, the bonus should be 0.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> positive integer, boolean
  OUTPUTS --> integer
  RULES:
    - input salary must be greater than 0
    - output is an integer
  MENTAL MODEL:
  The method will first check to see if boolean is true. If it's
  false the method will return 0. If not, the method will caculate
  and return the bonus if the salary is >0 (otherwise returning 0)

EXAMPLES / TEST CASES: 
  puts calculate_bonus(2800, true) == 1400
  puts calculate_bonus(1000, false) == 0
  puts calculate_bonus(50000, true) == 25000

DATA STRUCTURE: 
  INPUTS  --> integer and boolean
  OUTPUTS --> integer

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - check if boolean is true
    - if it's false or if salary < 0, return 0
    - if it's true, return salary / 2

  FORMAL:
    START method(integer x, boolean y)
      if x > 0 && y is true
        return x / 2
      else 
       return 0
      END
    END


=end

def calculate_bonus(salary, getting_bonus)  
  (salary > 0 && getting_bonus) ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#in LS answer there was not the salary > 0 validation step
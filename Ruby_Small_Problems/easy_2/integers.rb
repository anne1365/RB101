=begin
PROBLEM:

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string number greater than 0, 's' or 'p' to choose operation
  OUTPUTS --> string reporting sum/product of all numbers from one to user integer
  RULES:
    - we're working w/ integers throughout
  MENTAL MODEL:
  We will prompt user for integer greater than 0, and save integer to value.
  We'll ask user whether they would like to obtain sum or product of #s from 1 to 
  their integer, and collect response in variable. If they would like to sum, we'll sum
  digits one to integer, and if product we'll return product of numbers one to integer. 
  We will output a message with the operation performed and its outcome.

EXAMPLES / TEST CASES:
  - 1-5 sum  --> 15
  - 1-6 prod --> 720

DATA STRUCTURE: 
  INPUTS  --> string & char
  OUTPUTS --> string message

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - prompt user for int > 0 - save as var
    - construct array from range (1.. user int)
    - prompt user for desired operation - save as var
    - if * --> initialize empty int variable x = 1
      - iterate through array - compute_product element by x
      - return x
    - if + return array.sum
  FORMAL:
    START 
      PRINT num?
      GET num
      array = (1..num).to_a

      PRINT op? s - sum, p prod
      GET response

      IF response s
        return array.sum
      ELSE
        prod = 1
        FOR EACH element of array 
          prod *= element
        END
      END

      PRINT message containing int, op, and result
    END

=end

# MY SOLUTION
def compute_product(num)
  total = (1..num).inject { |total, n| total * n } # OR --> (1..num).reduce(:*)
end

def compute_sum(num)
  total = (1..num).inject { |total, n| total + n } # OR --> (1..num).reduce(:+)
end

num = ''
loop do 
  puts ">> Please enter an integer greater than 0: "
  num = gets.to_i
  break unless num <= 0 
  puts ">> Error - not a valid integer!"
end

puts ">> Enter 's' to compute the sum, or 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(num)
  
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif operation == 'p'
  product = compute_product(num)
  
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Error: Not a valid operation!"
end

# # LS SOLUTION
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |x| total += x }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |x| total *= x }
#   total
# end

# puts ">> Please enter an integer greater than 0: "
# number = gets.chomp.to_i #--------------------------------> WHEN TO USE 'gets.to_i' vs. 'gets.chomp.to_i'?

# puts ">> Enter 's' to compute sum, 'p' to compute product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "Sum ... #{sum}"
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "Product ... #{product}"
# else
#   puts "Oops - unknown operation."
# end

=begin
THOUGHTS:
- Definitely could have improved my code by extracting sum and product functionality to
  individual methods. 
- Want to investigate this .upto method - v cool
=end

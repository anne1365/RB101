=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result
by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array
is non-empty.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array of integers
  OUTPUTS --> printed string including float rounded to three decimal places (returns nil)
  IDEAS:
    - Float#round(# digits)
    - Inject :* divided by array.size

=end # ----------------------------------------------------------------------------------------------------------


def show_multiplicative_average(arr)
  avg = ((arr.inject(:*)).to_f / arr.size)
  puts "The result is #{("%.3f" % avg)}"
end


show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

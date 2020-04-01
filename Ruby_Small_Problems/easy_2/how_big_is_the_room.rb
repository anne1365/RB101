=begin
PROBLEM:
Build a program that asks a user for the length and
width of a room in meters and then displays the area
of the room in both square meters and square feet.
Note: 1 square meter == 10.7639 square feet
Do not worry about validating the input at this time.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer for length, integer for width
  OUTPUTS --> string containing area of room sq m & sq ft (2 integers)
  RULES:
    - outputs should be floats
    - string should be diplayed to console w/ outputs
    - we will be collecting dimensions from the user using command line
    - floats are truncated to 2 decimal places
  MENTAL MODEL: 
  After converting inputs from string to integers,
  we will multiply the two provided integers to get area square meters, 
  then multiply this number by 10.7639 to give us area in square feet. 
  Then we'll use string interpolation to report these numbers in a message
  to the user.

EXAMPLES / TEST CASES: 
  - L10/W7 --> 70.0 sq m (753.47 sq ft)

DATA STRUCTURE: 
  INPUTS  --> two integers
  OUTPUTS --> two floats interpolated in a string

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - ask user for room length, collect this in variable
    - ask user for room width. collect this in variable
    - set variable = to l*w --> area in sq meters
    - set variable = to 10.7639(l*w) --> area in sq feet
    - print message including area in both measures

  FORMAL:
    START
      PRINT message requesting room length
      GET room length (l)
      PRINT message requesting room width
      GET room width (w)
      
      SET sq_meters = l * w
      SET sq_feet = 10.7639 * sq_meters

      PRINT area is sq_meters (sq_feet)
    END

=end

puts "Enter the room's length in meters:"
length = gets.chomp

puts "Enter the room's width in meters:"
width = gets.chomp

area_meters = length.to_f * width.to_i
area_feet = area_meters * 10.7639

puts "The area of the room is #{area_meters.truncate(2)} square meters (#{area_feet.truncate(2)} square feet)."

=begin
LS ANSWER 
SQMETERS_TO_SQFEET = 10.7639

puts "=> Enter length of room in meters: "
length = gets.to_f

puts "=> Enter width of room in meters: "
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "Area is #{square_meters} square meters (#{square_feet} square feet)."

==> ROOM FOR ME TO IMPROVE:
    - constants are a good idea to add in when we have a number
      whose value won't change but is also not obvious
    - Float#round method is a new one, but is helpful here and is
      easier to use than Kernel#format, and from what I can tell
      it is more accurate than Float#truncate

=end
#FURTHER EXPLORATION
SQMETERS_PER_SQFOOT = 10.7639

puts "=> Enter length of room in feet: "
length = gets.to_f

puts "=> Enter width of room in feet: "
width = gets.to_f

square_feet = (length * width).round(2)
square_centimeters = ((square_feet / SQMETERS_PER_SQFOOT) * 100).round(2)

puts "Area is #{square_feet} square feet (#{square_centimeters} square centimeters, #{square_feet * 12} square inches)."

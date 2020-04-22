=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each
have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the
lower-left of the triangle, and the other end at the upper-right.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> a positive integer
  OUTPUTS --> displays a right triangle made of asterisks, whose sides each equal input integer. The hypotenuse
              should face northwest
  QUESTIONS:
  RULES:
    EXPLICIT: 
      - triangle must be right-justified
      - two straight sides must le length of inputted int
    IMPLICIT:
      - there is a blank line after the method is called - this makes the algorithm simpler
  IDEAS:
    -----  5 space 0 star
    ----*  4 space 1 star
    ---**  3 space 2 star
    --***  2 space 3 star
    -****  1 space 4 star
    *****  0 space 5 star

EXAMPLES / TEST CASES:
  triangle(5)
  
      *
     **
    ***
   ****
  *****

DATA STRUCTURE:
  INPUTS  --> int
  OUTPUTS --> string display


  - 
=end # ----------------------------------------------------------------------------------------------------------

def nw_triangle(size)
  spaces = size - 1

  until spaces < 0
    puts (' ' * spaces) + ('*' * (size - spaces))
    spaces -= 1
  end
end


def ne_triangle(size)
  spaces = size - 1

  until spaces < 0
    puts  ('*' * (size - spaces)) + (' ' * spaces)
    spaces -= 1
  end
end


def se_triangle(size)
  spaces = 0

  until spaces > size
    puts ('*' * (size - spaces)) + (' ' * spaces)
    spaces += 1
  end
end


def sw_triangle(size)
  spaces = 0

  until spaces > size
    puts (' ' * spaces) + ('*' * (size - spaces))
    spaces += 1
  end
end



nw_triangle(10)
sw_triangle(10)
ne_triangle(10)
se_triangle(10)

nw_triangle(10)
sw_triangle(10)
ne_triangle(10)
se_triangle(10)

nw_triangle(10)
sw_triangle(10)
ne_triangle(10)
se_triangle(10)

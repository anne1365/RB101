=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as
an argument to the method. You may assume that the argument will always be an odd integer.

-*-       1 space, 1 star
***       0 space, 3 star
-*-       1 space, 1 star
    
--*--     2 space, 1 star
-***-     1 space, 3 star
*****     0 space, 5 star
-***-     1 space, 2 star
--*--     2 space, 1 star

---*---   3 space, 1 star, 3 space
--***--   2 space, 3 star, 2 space   
-*****-   1 space, 5 star, 1 space
*******   0 space, 7 star, 0 space
-*****-   1 space, 5 star, 1 space
--***--   2 space, 3 star, 2 space
---*---   3 space, 1 star, 3 space

---*---   3 space, 1 star, 3 space                    1
--*-*--   2 space, 1 star, 1 space, 1 star, 2 space   3
-*---*-   1 space, 1 star, 3 space, 1 star, 1 space   5
*-----*   0 space, 1 star, 5 space, 1 star, 0 space   7
-*---*-   1 space, 1 star, 3 space, 1 star, 1 space   5
--*-*--   2 space, 1 star, 1 space, 1 star, 2 space   3
---*---   3 space, 1 star, 3 space                    1




UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer representing the width of the diamond
  OUTPUTS --> printout to screen - diamond
  RULES:
    EXPLICIT:
      - we are to assume that the input number is always odd

ALGORITHM / PSEUDOCODE:
  - initialize new array variable to range object 1..n with odd numbers selected
  - append reversed first n.size-1 numbers onto end of array and flatten
  - for each element in the array, print n-1/2 spaces and n stars

=end # ----------------------------------------------------------------------------------------------------------

def stars(int)
  arr = (1..int).select {|n| n.odd?}
  arr.append(arr.first(arr.size-1).reverse).flatten!
  arr.each { |n| puts (' ' * ((int - n) / 2 )) + ('*' * n) }
end

stars(7)
stars(9)
stars(3)
stars(5)
stars(15)



def hollow_stars(int)
  arr = (1..int).select {|n| n.odd?}
  arr.append(arr.first(arr.size-1).reverse).flatten!
  
  arr.each do |n| 
    if n == 1
      puts (' ' * ((int - n) / 2 )) + ('*') 
    elsif int == n
      puts ('*') + (' ' * (n - 2)) + ('*')
    else
      puts (' ' * ((int - n) / 2 )) + ('*') + (' ' * (n - 2))  + ('*')
    end
  end
end

hollow_stars(7)
hollow_stars(9)
hollow_stars(11)

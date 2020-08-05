=begin ----------------------------------------------------------------------------------------------------------
PROBLEM: given 3 integer arguments, return a symbol communicating whether
         the three integers form a equilateral, isosceles, or scalene
         triangle, or whether they don't form a triangle

UNDERSTANDING THE PROBLEM:
  INPUTS  --> 3 integers or floats
  
  OUTPUTS --> symbol

DATA STRUCTURE: integer inputs >> array

ALGORITHM / PSEUDOCODE:
- initialize new array to store triangle side measurements 
- sort the array
- conditional
  - if first el + second el <= third el -> invalid
  - if array elements all the same -> equilateral
  - if two elements the same -> isosceles
  - else scalene

=end # ----------------------------------------------------------------------------------------------------------

def triangle(a, b, c)
  t = [a, b, c].sort

  if t[0] + t[1] <= t[2]
    :invalid
  elsif t[0] == t[1] && t[1] == t[2]
    :equilateral
  elsif t[0] == t[1] || t[1] == t[2]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
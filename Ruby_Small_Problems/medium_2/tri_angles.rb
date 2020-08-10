=begin ------------------------------------------------------------------
PROBLEM: write a method is which we take three integers that represent
the three angles of a triangle and return a symbol expressing the type of
triangle the angles form

UNDERSTANDING THE PROBLEM:
  INPUTS  --> three integers representing 3 angles  
  OUTPUTS --> a symbol - :acute, :right, :obtuse, or :invalid
  
  QUESTIONS: 
    - What if the inputs are not integers?
  
  RULES:
    EXPLICIT:
      - method should accept 3 ints and return a symbol representing
        triangle type
      - right triangle has one 90 degree angle
      - acute triangle contains three angles of less than 90 degrees
      - obtuse triangle contains one angle greater than 90 degrees
      - sum of the angles must be 180 degrees for triangle to be valid
      - we can assume integer inputs
      - all inputs must be greater than 0
    IMPLICIT:

  IDEAS:

ALGORITHM / PSEUDOCODE:
- initialize array to hold angles, sort it
- if first element <= 0 or array sum > or < 180 --> invalid
- if last el < 90 -> acute
- if last el == 90 -> right
- if last el > 90 -> obtuse

START method(a, b, c)
  SET array [a, b, c]
  sort array from least to greatest

  IF (first element of array <= 0) OR (sum of array elements > 180) OR (sum < 180)
    return invalid 
  ELSIF last element < 90
    return acute
  ELSIF last element == 90
    return right
  ELSE
    return obtuse
  END
END method

=end # ------------------------------------------------------------------

def triangle(a, b, c)
  arr = [a, b, c].sort
  
  if (arr[0] <= 0) || (arr.sum > 180) || (arr.sum < 180)
    :invalid
  elsif arr.last < 90
    :acute
  elsif arr.last == 90
    :right
  else
    :obtuse
  end
end

p triangle(20, 190, 40) == :invalid
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
p triangle(-5, 55, 130) == :invalid

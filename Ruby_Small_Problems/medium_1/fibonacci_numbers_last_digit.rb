=begin
  INPUT: INTEGER, NTH NUMBER
  OUTPUT: INTEGER - LAST DIGIT OF NTH FIBONACCI #

  REQUIREMENTS:
    EXPLICIT - 
      - METHOD NEEDS TO RETURN LAST DIGIT OF NTH FIBONACCI NUMBER
    IMPLICIT -
      - METHOD RETURNS AN INTEGER

  ALGORITHM
  - REUSE PROCEDURAL FIBONACCI METHOD TO GET NTH NUMBER
  - CONVERT LAST ELEMENT (NTH FIBONACCI #) TO STRING
  - GET LAST CHARACTER OF STRING
  - CONVERT BACK TO INTEGER & RETURN
=end

def fibonacci_last(n)
  arr = [1, 1]

  (n-2).times do
    arr << arr.sum
    arr.shift
  end

  arr[1].to_s.chars.last.to_i
end

p fibonacci_last(15) == 0
p fibonacci_last(20) == 5
p fibonacci_last(1_000_007) == 3

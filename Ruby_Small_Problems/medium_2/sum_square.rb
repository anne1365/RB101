=begin
ALGORITHM: (given mumber n)
- initialize sum_squared variable - set equal to squared sum
  - square the sum of the array created from the range between 1 and n
-initialize squared_sum variable to 0
- iterate through each number from 1 to n, squaring each and reassigning squared sum to the result of adding itself and the squared number

- return sum_squared - squared sum

=end

def sum_square_difference(n)
 (1..n).sum**2 - (1..n).map{ |i| i**2 }.sum
end

p sum_square_difference(3) == 22
p    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

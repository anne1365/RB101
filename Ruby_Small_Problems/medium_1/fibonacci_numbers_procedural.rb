=begin
  Problem: write a method that can calculate the nth Fibonacci number

  Input: number (n)
  Output: nth fibonacci number

  Requirements: no recursion

  Algorithm: 
    set an array equal to [1, 1]
    n-2 times, add the elements, append the sum, remove the first element (via shift) and repeat
    return the [1] element of the array
=end

def fibonacci(n)
  arr = [1, 1]

  (n-2).times do
    arr << arr.sum
    arr.shift
  end

  arr[1]
end

p fibonacci(100000)
#fibonacci(100) == 354224848179261915075

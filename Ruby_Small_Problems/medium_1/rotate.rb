require 'pry'

=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
=end


def rotate_array(arr)
  tmp = arr.dup
  tmp.push(tmp.shift)
end

def rotate_string(str)
  rotate_array(str.split).join(' ')
end

def rotate_integer(int)
  rotate_array(int.to_s.chars).join.to_i
end


rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

rotate_string("That is a cat") == 'is a cat That'

rotate_integer(12345) == 23451



=begin 
rotation part two
IDEA: reapeat original rotation method n times 
=end

def rotate_n_digits(str, num)
  res = str.dup  
  num.times { |_| res = rotate_array(res.to_s.chars).join.to_i }
  res
end



=begin
I didn't read the problem right
NEW PLAN: 
  - convert input to string
  - snag last n digits and convert to array
  - call rotate_array on this - save to variable
  - join rotated array to original array?? try in irb
  - return this
=end

def rotate_rightmost_digits(input, num)
  res = input.to_s.chars
  res.append(rotate_array(res.pop(num))).join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917



=begin
7 3 5 2 9 1

3 5 2 9 1 7
3   2 9 1 7 5
3 2     1 7 5 9
3 2 1       5 9 7
3 2 1 5         7 9

IDEA: 
  - use rightmost digits method starting with a number input of input.length (set to variable n)
  - loop input.length # of times, each time using the next fewer number as the
    input for the rightmost digits method
  - when n = 0, exit loop and return resulting array (joined)
=end

def max_rotation(digit)  
  num = digit.to_s.length
  
  loop do 
    break if num <= 1
    digit = rotate_rightmost_digits(digit, num)
    num -= 1
  end
  
  digit
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15

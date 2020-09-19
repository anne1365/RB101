=begin
PROBLEM: given array, return every other element of the array
(the even elements)

ALGORITHM: 
initialize new array odd_elements
iterate through each element of input array with index
push each element at an odd index to the new array

=end


def oddities(arr)
  odd_arr = []
  arr.each_with_index { |el, i| odd_arr << el if (i.even?) }
  odd_arr
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
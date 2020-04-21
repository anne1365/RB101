=begin ------------------------------------------------------------------------
PROBLEM:
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.
You may not use Array#reverse or Array#reverse!.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array
  OUTPUTS --> same array with elements reversed

  IDEAS:
    - temporary array that we push the original array elements to in reverse
      order, then iterate through the array changing each element to match the
      elements of the temporary array
    - is there some way we can generalize the positioning of the array
      elements we want to switch?

ALGORITHM / PSEUDOCODE:
  - initialize two counters, one to count from 0 (to count from array start)
    and one one to count down from -1 (to count from array end)
  - array size / 2 times, we will switch the first and last element, second and
    second to last, and so on
  - counters will be incremented during each loop
  - array is returned at the end

=end # ------------------------------------------------------------------------


def reverse!(array)
  head = 0
  tail = -1

  (array.length / 2).times do
    array[head], array[tail] = array[tail], array[head]
    head += 1
    tail -= 1
  end
  
  array
end


# p list = [1,2,3,4]
# p result = reverse!(list)
# p result == [4, 3, 2, 1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id
# puts
# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"]
# p list == ["c", "d", "e", "b", "a"]
# puts
# p list = ['abc']
# p reverse!(list) == ["abc"]
# p list == ["abc"]
# puts
# p list = []
# p reverse!(list) == []
# p list == []


def reverse(array)
  reverse_array = []
  tail = -1

  while (tail * -1) <= array.length do
    reverse_array << array[tail]
    tail -= 1
  end

  reverse_array
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
puts
p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1] 

=begin
PROBLEM: Write a method that takes an Array of numbers, and returns
an Array with the same number of elements, and each element has the
running total from the original Array.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array of numbers
  OUTPUTS --> array of numbers
  QUESTIONS:
    - how should the method deal with negative numbers?
    - how should the method deal with non integer inputs?
  RULES:
    EXPLICIT:
      - output array should contain same number of elements as original
      - each array element after the first should be equal to itself + prev element
    IMPLICIT:
      - arrays are made up of integers

EXAMPLES / TEST CASES: 
  running_total([2, 5, 13]) == [2, 7, 20]
  running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  running_total([3]) == [3]
  running_total([]) == []

ALGORITHM / PSEUDOCODE:
  CASUAL:
  - we'll initiate an empty array
  - given an array of numbers, we'll loop through the array with a counter
    - if the counter = 0 (first element), we'll move to next iteration after pushing element to new array
    - if not, we'll add array[counter] to array[counter - 1] and push to new array
=end



# def running_total(array)
#   total = []
#   counter = 0

#   loop do
#     if array.size <= 1
#       total = array
#       break
#     end
    
#     if counter == 0
#       total << array[counter]
#       counter += 1
#       next
#     end

#     if array.size > 1
#       total << ((array[counter]) + (total[counter - 1]))
#       counter += 1
#       break if counter == array.size
#     end
#   end

#   total
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []



=begin
LS Solution (oof mine was wordy)

def running_total(array)
  sum = 0
  array.map{ |value| sum += value }
end
=end



def running_total(array)
  current_element = 0
  array.each_with_object([]) do |element, array|
    array << current_element += element
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

=begin
Implement a bubble sort algorithm - iterate through an array, 
comparing each element to the one following it. If the latter
element is smaller than the former, swap them and continue on. 

Stop iterating when no swaps need to be made.

INPUT: array
OUTPUT: sorted array (same object)

ALGORITHM:
- initialize swap_occurred to false - true when a swap has occurred
- initialize left variable to 0 (will point to left element in
  comparison pair)
- initialize right variable to 1

until swap_occurred is false
- swap_occurred = false
- loop while right variable is less than the size of the array
  - if element @ left is > element @ right
    double reassign them to swap them
  - swap_occurred = true
  
  - increment left and right
  end loop

return input array

=end

def bubble_sort!(arr)
  swap_occurred = true

  until swap_occurred == false
    swap_occurred = false
    left = 0
    right = 1
    
    while right < arr.size
      if arr[left] > arr[right]
        arr[left], arr[right] = arr[right], arr[left]
        swap_occurred = true
      end

      left += 1
      right += 1
    end
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)



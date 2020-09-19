=begin  
  INPUT: positive integer
  OUTPUT: string of alternating 1's and 0's, 
          starting with 1, length matching given integer

  PLAN: initiate a variable x to 1, and for x to provided integer we'll
        append a 1 (if x odd) or 0 (if x even)

        array will be last eval line
=end


def stringy(int, first = 1)
  d = [0, 1]  
  d.reverse! if first == 0

  arr = []
  int.times { |i| i.odd? ? arr << d[0] : arr << d[1] }
  arr.join
end


puts stringy(5)
puts stringy(5, 0)

puts stringy(9)
puts stringy(9,0)

puts stringy(0)
puts stringy(1)
puts stringy(1,0)




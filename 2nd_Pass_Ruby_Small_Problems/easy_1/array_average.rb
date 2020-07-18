=begin
 I  array
 O  int avg of #s in array
 P  sum array / array.size
=end

def average(ary)
  ary.sum.to_f / ary.size
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
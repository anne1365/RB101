arr = [2, 5, 3, 4, 1]
puts "ORIGINAL ARRAY: #{arr}"
puts

arr.sort! do |a, b|
  puts "a is #{a} and b is #{b}"
  p arr
  puts
  a <=> b
end

puts "MODIFIED ARRAY: #{arr}"
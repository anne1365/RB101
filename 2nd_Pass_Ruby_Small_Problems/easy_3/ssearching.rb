user_arr = []

5.times do |i|
  puts "Enter number #{i + 1}: "
  user_arr << gets.to_i
end

puts "Enter the last number: "
search_number = gets.to_i

if user_arr.include?(search_number)
  puts "The number #{search_number} appears in #{user_arr}" 
else
  puts "The number #{search_number} doesn't appear in #{user_arr}"
end
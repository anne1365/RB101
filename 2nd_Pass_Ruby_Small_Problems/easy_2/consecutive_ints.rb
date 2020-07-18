puts "Please enter an integer greater than 0: "
number = gets.to_i

ary = (1..number).to_a

puts "Enter 's' to compute the sum, or 'p' to compute the product."
choice = gets.chomp.downcase

case choice
when 's'
  puts "The sum of the integers between 1 and #{number} is #{ary.sum}."
when 'p'
  product = 1
  ary.each do |i|
    product *= i
  end
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "ERROR: Invalid selection."
end

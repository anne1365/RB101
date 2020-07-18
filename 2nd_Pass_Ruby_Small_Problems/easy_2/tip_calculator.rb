puts "What is the bill?"
bill = gets.to_f

puts "How much would you like to tip? (%)"
tip_percentage = gets.to_f

tip = (bill * (tip_percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

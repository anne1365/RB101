puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

years_to_retirement = retirement_age - age
year = Time.now.year

puts "It's #{year}, so you'll retire in #{year + years_to_retirement}."
puts "Only #{years_to_retirement} years to go!"
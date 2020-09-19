puts "What is your name? "
name = gets.chomp

scream = "HELLO #{name.delete("!").upcase}. WHY ARE WE SCREAMING?"
greeting = "Hello #{name}."

puts name.end_with?("!") ? scream : greeting 
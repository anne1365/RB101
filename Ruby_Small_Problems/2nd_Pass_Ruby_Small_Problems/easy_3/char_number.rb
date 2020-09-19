puts "Please enter a word, phrase or sentence: "
input = gets.chomp

size = input.split.join.size
puts "There are #{size} characters in #{input}."

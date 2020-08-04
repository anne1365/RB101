=begin
PROBLEM:      Provided a text file, we need to write a program that finds
              the longest sentence in the text file and prints it. Sentences can be
              delimited by periods, exclamation points, or question marks. Our
              program should also print the number of words in the longest sentence.

INPUT:        text file
OUTPUT:       the longest sentence within the text file, and a count of the number
              of words in that sentence

REQUIREMENTS: 

QUESTIONS:    

ALGORITHM: 
=end
passage = File.open("frankenstein.txt")



def longest_sentence(passage)
longest = []

passage.split(/[.!?]/).each do |sentence|
  if sentence.size > longest.size
    longest = sentence
  end
end

puts "THE LONGEST SENTENCE IS: '#{longest.strip}'\n\n"
puts "The longest sentence is #{longest.split.size} words long!"
end

p longest_sentence(passage.read)
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

text = "This is a house. This is the house that I live in! I live in my house with my pet ficus. Do you have a ficus?"

longest = []
text.split(/[.!?]/).each do |sentence|
  if sentence.size > longest.size
    longest = sentence
  end
end

p longest
p longest.split.size


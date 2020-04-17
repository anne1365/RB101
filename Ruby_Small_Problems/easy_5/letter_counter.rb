# =begin ------------------------------------------------------------------
# PROBLEM:
#  Write a method that takes a string with one or more space separated
#  words and returns a hash that shows the number of words of different
#  sizes.
# Words consist of any string of characters that do not include a space.

# UNDERSTANDING THE PROBLEM:
#   INPUTS  --> a string with one or more words separated by spaces
#   OUTPUTS --> a hash of format: length of word => number of words of this length
#   RULES:
#     EXPLICIT:
#       - input is a string
#       - output is a hash 
#       - words consist of any string of characters that do not include a space

#     IMPLICIT:
#       - punctuation and non alphabetic characters are counted as well
#       - case does not impact the function of this method

# DATA STRUCTURE: 
#   INPUT-string > array > OUTPUT-hash

# ALGORITHM / PSEUDOCODE:
#   CASUAL:
#     - we will initialize an empty hash
#     - we will take the string and use split method to separate it into arrray
#     - we will iterate through each array element, obtaining element's length
#     - for each element's length, we will check the keys of the hash
#         - if the hash contains a key for the length of current element, we will add one
#           to the value of that key
#         - if not, we will add a new key value pair for this novel element length
#     - we will return the hash after exiting the loop
# =end #--------------------------------------------------------------------


def word_sizes(str)
  hsh = Hash.new(0)
  
  str.split.each do |s| 
    hsh[s.scan(/\w/).length] += 1
  end
  
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

=begin
LS Solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[words.size] += 1
  end
  counts
end
=end
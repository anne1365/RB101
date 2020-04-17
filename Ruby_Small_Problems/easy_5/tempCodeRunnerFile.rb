=begin------------------------------------------------------------------
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
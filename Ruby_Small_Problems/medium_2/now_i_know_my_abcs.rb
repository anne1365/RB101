# blocks = {['a', 'n'] => true, ['b', 'o'] => true, ['c', 'p'] => true,
#           ['d', 'q'] => true, ['e', 'r'] => true, ['f', 's'] => true,
#           ['g', 't'] => true, ['h', 'u'] => true, ['i', 'v'] => true,
#           ['j', 'w'] => true, ['k', 'x'] => true, ['l', 'y'] => true,
#           ['m', 'z'] => true}

# BLOCKS = [['a', 'n'], ['b', 'o'], ['c', 'p'], ['d', 'q'], ['e', 'r'],
#           ['f', 's'], ['g', 't'], ['h', 'u'], ['i', 'v'], ['j', 'w'],
#           ['k', 'x'], ['l', 'y'], ['m', 'z']]

# ^^THIS IS NOT A VALID DATA STRUCTURE BUT IS ALONG THE VEIN OF WHAT I THINK WOULD WORK
# BRAINSTORM ALTERNATIVES

=begin
iterate through each letter of given word
for each letter, check hash
if value == false, block has been used and word can't be formed
if value true for all letters, word can be spelled w/ blocks

PROBLEM:    We have 13 blocks, each with 2 letters on them. Once we use one of the
            blocks we can't resuse it, so letters can't be repeated, and if a block has
            been used then both letters on it aren't available to be used. The block_word?
            method should take a word and return true or false based on whether we can spell
            it out with blocks. 
   
INPUT:      String (our word)
OUTPUT:     true or false 

QUESTIONS:  What do we do with invalid input types?

ALGORITHM:  
  - initiate a nested array to represent each block
  - iterate through each letter in the provided string
  - for each letter, get the index of the letter within the constant
  - delete that element 
  - if getting the index results in nil being returned, we'll return false
  - otherwise we'll return true
=end





# MY SOLUTION
def block_word?(str)
  blocks = %w(an bo cp dq er fs gt hu iv jw kx ly mz)

  arr = str.downcase.chars.map do |char|
    idx = blocks.index { |el| el.index(char) }
    blocks.delete_at(idx) if idx != nil
  end

  arr.include?(nil) ? false : true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
##





# LS SOLUTION
BLOCKS = %w(AN BO CP DQ ER FS GT HU IV JW KX LY MZ).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
##
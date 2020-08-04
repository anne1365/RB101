blocks = {['a', 'n'] => true, ['b', 'o'] => true, ['c', 'p'] => true,
          ['d', 'q'] => true, ['e', 'r'] => true, ['f', 's'] => true,
          ['g', 't'] => true, ['h', 'u'] => true, ['i', 'v'] => true,
          ['j', 'w'] => true, ['k', 'x'] => true, ['l', 'y'] => true,
          ['m', 'z'] => true}

# ^^THIS IS NOT A VALID DATA STRUCTURE BUT IS ALONG THE VEIN OF WHAT I THINK WOULD WORK
# BRAINSTORM ALTERNATIVES

=begin
iterate through each letter of given word
for each letter, check hash
if value == false, block has been used and word can't be formed
if value true for all letters, word can be spelled w/ blocks
=end

p blocks
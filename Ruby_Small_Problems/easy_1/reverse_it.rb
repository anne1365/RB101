=begin
UNDERSTANDING THE PROBLEM:
  INPUTS  --> string
  OUTPUTS --> string with words in reverse order
  RULES:
    - space character does not throw error - returns single space character
    - original capitalization is maintained
    - it is the word ordering, not the letter ordering, that is reversed
  QUESTIONS: 
    - What are we doing about capitalization? Disregarding it, it appears
  MENTAL MODEL: when provided a string of words, we will split the string, 
   reverse the resultant array, and then join the array

EXAMPLES / TEST CASES: 
  puts reverse_sentence('') == ''
  puts reverse_sentence('Hello World') == 'World Hello'
  puts reverse_sentence('Reverse these words') == 'words these Reverse'
  puts reverse_sentence('My cat is a squishy orange marshmallow boi') == 
                        'boi marshmallow orange squishy a is cat My'

DATA STRUCTURE: 
  INPUTS  --> string
  OUTPUTS --> array

ALGORITHM / PSEUDOCODE:
  CASUAL: 
  - split string, creating an array
  - call reverse method on array to switch ordering
  - call join method on array to produce reversed string

  FORMAL:
    START method(string x)
      split x 
      reverse x
      join x
    END
=end


def reverse_sentence(string)
  string.split.reverse!.join(" ")
end 

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('My cat is a squishy orange marshmallow boi') == 
                      'boi marshmallow orange squishy a is cat My'



=begin
ALGORITHM - PART 2
  CASUAL:
  - split input string into separate words
  - iterate through each word - if word length >= 5
      - separate it into separate characters
      - reverse the characters
      - join the characters
  - join the array of separate words with spaces
  - return string

  FORMAL
    START method(string x)
      SET tmp_ary = array of string's words
      FOR EACH element in tmp_ary 
        separate into chars
        reverse char order if 
        join chars
      END
      join tmp_array with " "
    END

=end

def reverse_words(string)
  temp_array = string.split
  
  temp_array.map! do |element|
    break unless element.length >= 5
    element.chars.reverse!.join
  end
  
  temp_array.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin
LS ANSWER
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end
=end

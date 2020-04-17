
=begin
PROBLEM: Given a string of words separated by spaces, write a method
that takes this string of words and returns a string in which the first
and last letters of every word are swapped.
You may assume that every word contains at least one letter,
and that the string will always contain at least one word.You
may also assume that each string contains nothing but words and spaces

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string 
  OUTPUTS --> string in which first and last letter of each word are reversed
  QUESTIONS:
    - during switching, are cases maintained?
  RULES:
    EXPLICIT:
      - in each word the first and last letter chall be switched
      - individual words are delineated by spaces
      - we are to assume that each string contains at least one word
      - we are to assume that every word contains at least one character
      - we are to assume that every string only contains words and spaces
    IMPLICIT:
      - case of the words is maintained

EXAMPLES / TEST CASES:
  swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
  swap('Abcde') == 'ebcdA'
  swap('a') == 'a' 

=end----------------------------------------------------------------------

def swap(array)
  tmp = []
  
  array.split.map do |arr|
    arr = arr.chars

    first = arr.first
    last = arr.last

    arr[0] = last
    arr[arr.length - 1] = first

    tmp << arr.join
  end  
  
  tmp.join(' ')
end

p swap('happy healthy feline boi')
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin
LS Solution - SHOWS SOME VERY COOL SYNTAX I DIDN'T KNOW ABOUT

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

=end


#FURTHER EXPLORATION
def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  result.join(' ')
end

p swap('happy healthy feline boi')
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin
This method does not work, because result, the returned value,is assigned
the joined return value of swap_first_last_characters(), which in this case returns
  just the first and last characters, switched.
=end

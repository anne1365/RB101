=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a string, and returns a new string in which every character is doubled.

=end # ----------------------------------------------------------------------------------------------------------


def repeater(str)
  str.chars.map { |c| c * 2 }.join
end


# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

def double_consonants(str)
  str.chars.map { |c| c.match?(/[bcdfghj-np-tv-z]/i) ?  c * 2 : c }.join #alternative: /[a-z&&[^aeiou]]/i
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
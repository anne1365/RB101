=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a non-empty string argument, and returns the middle character or characters of the
argument. If the argument has an odd length, you should return exactly one character. If the argument has an even
length, you should return exactly two characters.

UNDERSTANDING THE PROBLEM:
  INPUTS  -->
  OUTPUTS -->
  QUESTIONS:
  RULES:
    EXPLICIT:

    IMPLICIT:
  IDEAS:

EXAMPLES / TEST CASES:

DATA STRUCTURE:
  INPUTS  -->
  OUTPUTS -->

ALGORITHM / PSEUDOCODE:

=end # ----------------------------------------------------------------------------------------------------------


def center_of(str)
    arr = str.chars
  
    if str.empty?
      str
    elsif arr.size.even?
      "#{arr[arr.size/2 - 1]}#{arr[arr.size/2]}"
    else
      arr[arr.size/2]
    end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
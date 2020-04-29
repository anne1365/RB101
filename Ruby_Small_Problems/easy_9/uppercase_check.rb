=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the
string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

ALGORITHM / PSEUDOCODE:
  - scan string using regexp to produce array w/out non-alphabetic chars
  - use .all? method with regexp to eval presence of uppercase chars

=end # ----------------------------------------------------------------------------------------------------------


def uppercase?(str)  
  str.scan(/[a-z]/i).all?(/[A-Z]/)
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
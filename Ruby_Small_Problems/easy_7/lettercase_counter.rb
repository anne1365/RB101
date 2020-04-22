=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of
characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and
one the number of characters that are neither.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string containing upper and lower case alphabetic characters and non-alphabetic characters
  OUTPUTS --> hash relaying number of upper- and lowercase letters, as well as non-alphabetis characters
  QUESTIONS:
  RULES:
    EXPLICIT:
      - input is a string
      - output is a hash with 3 keys (#uppercase chars, #lowercase chars, #non-alphabetic chars)
    IMPLICIT:
      - non alphabetic characters include spaces, numbers, and punctuation/symbols(i.e. #$%^...)
  IDEAS:
    - regexp might be a succinct way to search the string
    - .count might be useful here? 
    - to iterate, or not to iterate? (with each or map)

ALGORITHM / PSEUDOCODE:

=end # ----------------------------------------------------------------------------------------------------------


def letter_case_count(str)
  hsh = {
    lowercase: (str.scan(/[[:lower:]]/).join.size),
    uppercase: (str.scan(/[[:upper:]]/).join.size),
    neither:   (str.scan(/[^A-Za-z]/).join.size)
  }
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a String as an argument, and returns a new String that contains the original value
using a staggered capitalization scheme in which every other character is capitalized, and the remaining
characters are lowercase. Characters that are not letters should not be changed, but count as characters when
switching between upper and lowercase.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string
  OUTPUTS --> new string in which every other char is capitalized
  RULES:
    EXPLICIT:
      - string returned is a new string
      - in new string every other value is capitalized
      - the remaining values are lowercase
      - characters that aren't letters should not be modified
      - these characters should still count as characters when switching between upper and lowercase
    IMPLICIT:
      - spaces should not count as characteres to determine alternation of case
      - first character should be uppercase
  IDEAS:
    - split string so that spaces aren't counted during iteration but individual words are preserved
    - have a counter that can track the number of characters (sans spaces) in the string 
    - if counter is odd, upcse the character, if even, downcase

ALGORITHM / PSEUDOCODE:

=end # ----------------------------------------------------------------------------------------------------------


def staggered_case(str)
  counter = 0

  arr = str.chars.map do |char|
    counter += 1

    if counter.odd?
      char.upcase
    elsif counter.even?
      char.downcase
    else
      char
    end
  end
    
  arr.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'




=begin
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it
should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.
=end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

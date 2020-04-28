=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is
replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters
should be unchanged.
You may not use String#swapcase; write your own version of this method.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string
  OUTPUTS --> swapcased string

ALGORITHM / PSEUDOCODE:
- sep str into chars
- iterate through via map
- evaluate if each character is uppercase or lower case via regexp
- if lowercase, upcase otherwise downcase
- if neither do nothing
- join resultant array

=end # ----------------------------------------------------------------------------------------------------------


def swapcase(str)
  arr = str.chars.map do |char|
    if char.match?(/[A-Z]/)
      char.downcase
    elsif char.match?(/[a-z]/)
      char.upcase
    else
      char
    end
  end
  arr.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
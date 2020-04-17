=begin ------------------------------------------------------------------------
PROBLEM:
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze
or String#squeeze!.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string containing consecutive duplicates of characters
  OUTPUTS --> string without said duplicates
  QUESTIONS: 
  RULES:
    EXPLICIT:

    IMPLICIT:

EXAMPLES / TEST CASES: 

DATA STRUCTURE: 
  INPUTS  -->
  OUTPUTS -->

ALGORITHM / PSEUDOCODE:
  CASUAL:

  FORMAL:

=end # ------------------------------------------------------------------------


def crunch(str)
  string = []

  str.split.each do |s|
    tmp = ''
    s.chars.each_with_index { |c, i| tmp << c if c != s[i+1] }
    string << tmp
  end
  
string.join(' ')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a')== 'a'
p crunch('') == '' 
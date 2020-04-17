=begin ------------------------------------------------------------------------
PROBLEM:
Write a method that takes an Array of Integers between 0 and 19, and returns
an Array of those Integers sorted based on the English words for each number:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

UNDERSTANDING THE PROBLEM:
  INPUTS  --> array of numbers 1-19 order sequentially
  OUTPUTS --> array of same numbers ordered based on their english counterparts'
              position in the alphabet
  QUESTIONS:
    - is this a trick question where I'm supposed to literally just return the
      answer array because this problem is trying to teach me not to exert myself
      unnecessarily?
  RULES:
    EXPLICIT:
      - input is an array of numbers one through 19
      - output is an array of integers of the numbers listed alphabetically

ALGORITHM / PSEUDOCODE:
  CASUAL:
    - initialize a constant that is a hash with numbers as keys and english
      counterparts as values
    - 
=end # ------------------------------------------------------------------------


NUMBER_WORDS = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
                7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve',
                13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(arr)
  words = []
  numbers = []

  arr.map { |a| words << NUMBER_WORDS[a] }  
  words.sort!

  words.map { |a| numbers << NUMBER_WORDS.key(a) }  
  numbers
end


 p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

=begin
LS Solution
NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven
                  twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

=end
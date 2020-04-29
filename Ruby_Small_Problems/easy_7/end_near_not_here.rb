=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Write a method that returns the next to last word in the String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.

  IDEAS:
    - String#split
    - return string array[-2]

=end # ----------------------------------------------------------------------------------------------------------

def penultimate(str)
  str.split[-2]
end

#FURTHER EXPLORATION
def penultimate(str)
  str.split.size < 2 ? str : str.split[-2]
end

def middle(str)
  arr = str.split

  if str.empty?
    str
  elsif arr.size.even?
    "#{arr[arr.size/2 - 1]} #{arr[arr.size/2]}"
  else
    arr[arr.size/2]
  end
end


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p penultimate('thing') == 'thing'
p penultimate('') == ''


p middle("The cow jumped over the moon") #== 'jumped over'
p middle("The cow jumped") == 'cow'
p middle('') == ''
p middle('thing') == 'thing'
# puts 'orange'.slice(0..0)
# puts 'orange'.slice(0..1)
# puts 'orange'.slice(0..2)
# puts 'orange'.slice(0..3)
# puts 'orange'.slice(0..4)

# method takes one string argument
#   initialize empty array
#   initialize counter - until counter = arr.size-1
#     arr << slice string 0-counter
#     counter += 1
#   return arr
# end

def leading_substrings(str)
  arr = []
  count = 0

  until count == str.size do
    arr << str.slice(0..count)
    count += 1
  end

  arr
end

# p leading_substrings('cat')
# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings(str)
  arr = []
  
  until str.size == 0 do
    arr << leading_substrings(str)
    str.reverse!.chop!.reverse!
  end

  arr
end


def palindromes(str)
  arr = substrings(str)

  pal = arr.flatten.select do |sub|
    sub == sub.reverse && sub.size > 1
  end

  pal
end

# p palindromes('abcde')
# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
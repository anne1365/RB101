def reverse_it1(str)
  str.split.reverse.join(' ')
end

puts reverse_it1('Hello World')
puts reverse_it1('')
puts reverse_it1('Reverse these words')

def reverse_it2(str)
  str.split.map { |w| w.size >= 5 ? w.reverse : w }.join(' ')
end

puts reverse_it2('go heck yourself')
puts reverse_it2('Professional')          # => lanoisseforP
puts reverse_it2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_it2('Launch School')         # => hcnuaL lit2



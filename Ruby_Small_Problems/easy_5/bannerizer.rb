=begin
INPUT: string
OUTPUT: formatted string
ALGORITHM:
  - puts 5 lines total
  - 1st and 5th lines start and end with '+' but contain '-' signs, number of which is = to
    string.length + 2 --> string interpolation
  - 2nd and 4th lines do generally same thing but with pipes and spaces 
  -3rd line starts with pipe + space, then input string, then space + pipe
=end

def print_in_box(string)
  puts '+' + '-'*(string.length + 2) + '+'
  puts '|' + ' '*(string.length + 2) + '|'
  puts '| ' + string + ' |'
  puts '|' + ' '*(string.length + 2) + '|'
  puts '+' + '-'*(string.length + 2) + '+'
end
  
print_in_box('My milkshake brings all the boys to the yard.')
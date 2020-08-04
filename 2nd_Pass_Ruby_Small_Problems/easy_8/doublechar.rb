puts 'cat'.chars.map {|char| char*2}.join

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

def repeater2(str)
  p consonants = str.scan(/[^aeiouAEIOU ]/)
  
  arr = str.split.map do |word| 
    word.chars.map { |char| consonants.include?(char) ? char * 2 : char}.join 
  end

  arr.join(' ')
end

p repeater2('stringy thing')
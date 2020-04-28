#PRACTICE PROBLEM 1
arr = ['10', '11', '9', '7', '8']
arr.sort do |a, b|
  b.to_i <=> a.to_i
end




#PRACTICE PROBLEM 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books
books.sort_by {|b| b[:published]}




#PRACTICE PROBLEM 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].keys[0]




#PRACTICE PROBLEM 4
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
hsh2




#PRACTICE PROBLEM 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
male_age_sum = 0
munsters.values.each do |el|
  if el['gender'] == 'male'
    male_age_sum += el['age']
  end
end
male_age_sum




#PRACTICE PROBLEM 6
munsters.each do |x|
   "#{x[0]} is a #{x[1]['age']} year old #{x[1]['gender']}."
end

munsters.each_pair do |name, details| #LS SOLUTION
   "#{name} is a #{details['age']} year old #{details['gender']}"
end





#PRACTICE PROBLEM 8
hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
      }

vowels = ''
hsh.each do |key, val|
  val.each do |str|
    vowels << str.delete('^aeiou')
  end
end
vowels.each_char {|x| x }





#PRACTICE PROBLEM 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |ary|
  ary.sort do |a, b|
    b <=> a
  end
end





#PRACTICE PROBLEM 10
hsh1 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

hsh2 = hsh1.each_with_object([]) do |hsh, arr|
  incremented_hash = {} 
  
  hsh.each do |k, v|
    incremented_hash[k] = v + 1
  end

  arr <<incremented_hash
end




#PRACTICE PROBLEM 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

a = arr.map do |ary|
  ary.select do |num|
    num % 3 == 0
  end
end




#PRACTICE PROBLEM 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: 
#{:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

arr.each_with_object({}) do |el, hash|
  hash[el[0]] = el[1]
end




#PRACTICE PROBLEM 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# expected output => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
a2 = arr.sort_by do |sub|
  sub.select do |num|
    num.odd?
  end
end




#PRACTICE PROBLEM 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'large'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
#exp return => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end




#PRACTICE PROBLEM 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

a2 = arr.select do |hsh|
  hsh.all? do |_, v|
    v.all?{|num| num.even?}
  end
end



=begin
#PRACTICE PROBLEM 16
A UUID is a type of identifier often used as a way to uniquely identify items...which may not
all be created by the same system. That is, without any form of synchronization, two or more
separate computer systems can create new items and label them with a UUID with no significant
chance of stepping on each other's toes.

It accomplishes this feat through massive randomization. The number of possible UUID values
is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like
this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.
=end


def generate_uuid
  chars = Array('a'..'f') + Array(0..9)
  "#{chars.sample(8).join}-#{chars.sample(4).join}-#{chars.sample(4).join}-#{chars.sample(4).join}-#{chars.sample(12).join}"  
end

def gen_UUID #LS SOLUTION
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end
  uuid
end

require 'securerandom'
a = SecureRandom.uuid

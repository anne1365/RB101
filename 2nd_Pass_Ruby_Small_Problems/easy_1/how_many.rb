=begin
  Idea: 
  - initialize empty hash to hold list & corresponding counts
  - for each array element - 
    - if the hash doesn't include the element, add it as a key with a value of 1
    - if the hash does include the element, increment count
  - last line output hash
=end



# def count_occurrences(ary)
#   hsh = {}  
#   ary.each { |el| hsh.has_key?(el) ?  hsh[el] += 1 : hsh[el] = 1 }  
#   hsh.each { |k, v| puts "#{k} => #{v}" }
# end




def count_occurrences(array)
  array.tally.each { |k, v| puts "#{k} => #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
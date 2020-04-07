### EACH METHOD ####
numbers = [1, 2, 3]
counter = 0

loop do 
  break if counter == numbers. size
  puts numbers[counter]
  counter += 1
end

# ^^ FUNCTIONALLY EQUIVALENT TO:

[1, 2, 3].each do |num|
  puts num
end


hash = { a: 1, b: 2, c: 3}

hash.each do |key, value| 
  puts "Key: #{key} | Value: #{value}"
end


def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end
end
# 2, 4, 6 are outputted but original collection is returned



#### SELECT METHOD ####
p  [1, 2, 3].select do |num|
  num.odd?
 puts num
 end


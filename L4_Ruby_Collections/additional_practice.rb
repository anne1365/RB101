# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# hash = {}

# flintstones.each_with_index do |name, idx|
#   hash[name] = idx
# end

# p hash


# # ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# # total_age = ages.values.sum

# # #OR

# # ages.values.inject(:+)
# # p total_age


# # ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # # ages.reject! do |name, age|
# # #   age > 100
# # # end

# # p ages


# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p minimum_age = ages.values.sort.first

# #OR

# ages.values.min




# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |name, i| 
#   if name.start_with?('Be')
#    p i
#   end
# end



# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! do |name|
#   name[0, 3]
# end

# p flintstones


statement = "The Flintstones Rock"

arr = statement.delete!(' ').chars
freq = {}

arr.each do |char|
  if freq.has_key?(char)
    freq[char] += 1
  else
    freq[char] = 1
  end

end

p freq



def titleize(string)
  string.split.map { |str| str.capitalize! }.join(" ")
end

words = "the flintstones rock"
puts titleize(words)
puts words



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |key, value|
  if value.values.first <= 17
    munsters[key]['age_group'] = 'kid'
  elsif value.values.first <= 65
    munsters[key]['age_group'] = 'adult'
  else
    munsters[key]['age_group'] = 'senior'
  end
end

 
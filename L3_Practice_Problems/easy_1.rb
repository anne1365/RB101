=begin
1.) ARRAY MANIPULATION
    numbers = [1,2,2,3]
    numbers.uniq

    puts numbers 

    We will see an output of:
    1
    2
    2
    3
    because Array#uniq does not mutate the caller,
    and all numbers will be on their own line because puts
    calls to_s on its argument. p, by contrast, calls inspect
    on its argument, which in this case would have yielded 
    [1,2,2,3] as a result.


2.) ? AND ! OPERATORS IN RUBY
    a. != - checks values of two operands and returns true if two
       objects aren't equal - 

    b. ! before something - logical NOT operator flips the 
       logical state of the operands - so if an object evaluated
       to true by itself, it would evaluate to false when 
       prefaced by the bang operator 
        -- !user_name would evaluate to false

    c. ! after something - an indicator (though not the only
       indicator) of a method that mutates the caller (changes
       original object permanently)
        -- words.uniq! would return the original array sans any 
           duplicates
       THIS IS PART OF METHOD NAME WHEN APPLICABLE

    d. ? before something - in this situation '?' is a
       ternary operator

    e. ? after something - indicator that the return value
       of the preceding method is a boolean - THIS IS PART OF
       METHOD NAME

    f. !! before something - the double bang operator returns
       true or false based on whether a value is "truthy" or
       "falsey" (!!nil #--> false; !!'hi' --> true)
        -- !!user_name would evaluate to true
=end


#3.) Replace word "important" with "urgent"
advice = "Few things in life are as important as house training your pet dinosaur."
statement = "I have a pet dog and he's cool"

# # def replace(sentence, old_word, new_word)
# #   temp_array = sentence.split
# #   replace_at = temp_array.index(old_word)
# #   temp_array[replace_at] = new_word
# #   sentence = temp_array.join(" ")
# # end

# puts replace(advice, "important", "urgent")
# puts replace(statement, "dog", "cat")

puts advice.gsub!('important', 'urgent')
puts statement.gsub!('dog', 'cat ')


#4.) REMOVAL METHODS FOR ARRAY CLASS
numbers = [1, 2, 3, 4, 5]
p numbers.object_id

p numbers.delete_at(1)
p numbers
p numbers.object_id
p numbers.delete(1)
p numbers
p numbers.object_id

=begin
Array#delete_at() deletes an element at a specified index, while Array#delete()
deletes an element of a specific value. 
Both of these methods mutate the caller, since numbers' object id does not change
=end


#5.) USING RANGE OBJECTS
# 42 between 10 and 100? determine w/ range object
p (10..100).include? 42
p (10..100).cover? 42


#6.) String manipulation
famous_words = "seven years ago..."

puts "Four score and " + famous_words

b = ''
puts b.concat("Four score and ", famous_words)

puts famous_words.prepend("Four score and ")

puts "Four score and " << famous_words

puts famous_words.insert(0, "Four score and ")


#7.) NESTED ARRAYS
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

p flintstones


# #8.) SELECTING OBJECTS IN A HASH
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5}

flintstone_array = flintstones.to_a[2]
p flintstones.assoc("Barney")
p flintstone_array



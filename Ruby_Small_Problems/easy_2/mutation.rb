array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value} # [array same as array 1]
array1.each { |value| value.upcase! if value.start_with?('C', 'S')}

puts "\nARRAY ONE: #{array1.object_id}"
p array1.map {|x| x.object_id} 

puts "\nARRAY TWO: #{array2.object_id}"
p array2.map {|x| x.object_id} 


=begin
First each loop copies the references to the string objects from from array1 to array2. 
When the loop completes, both arrays not only contain the same values, 
they contain the same String objects(containing references to the same locations in memory).
If one of the Strings is modified, the modification will appear in both arrays.

Array 1 and Array 2 *themselves* have different object_ids, but the object_ids of all of their
elements match between the two.
=end
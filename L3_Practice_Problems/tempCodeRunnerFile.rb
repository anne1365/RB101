#1.)  VARIABLE REFERENCES
#       if false 
#         greeting = "hello world"
#       end

#       p greeting 


# #2.)  HASHES & METHODS THAT MUTATE
#       greetings = {a: 'hi'}
#       informal_greeting = greetings[:a]
#       informal_greeting << ' there'

#       puts informal_greeting #--> 'hi there'
#       puts greetings #--> {:a => 'hi there'}

#       #greetings is mutated because informal_greeting is a 
#       #reference to the original object -- to avoid mutating 
#       #original object we could do instead: 

#       informal_greeting = greetings[:a].clone #--> ref to new object
#       #containing same value

#       informal_greeting += ' there'


# #3.)  VARIABLE SCOPE
#       def mess_with_vars(one, two, three)
#         one = two
#         two = three
#         three = one
#       end

#       one = "one"
#       two = "two"
#       three = "three"

#       mess_with_vars(one, two, three)

#       puts "one is: #{one}"
#       puts "two is: #{two}"
#       puts "three is #{three}"

#       #variables won't be mutated - assignment doesn't mutate

#       def mess_with_vars(one, two, three)
#         one = "two"
#         two = "three"
#         three = "one"
#       end

#       one = "one"
#       two = "two"
#       three = "three"

#       mess_with_vars(one, two, three)

#       puts "one is: #{one}"
#       puts "two is: #{two}"
#       puts "three is #{three}"

#       #same as above----------------------------------------

#       def mess_with_vars(one, two, three)
#         one.gsub!("one","two")
#         two.gsub!("two","three")
#         three.gsub!("three","one")
#       end

#       one = "one"
#       two = "two"
#       three = "three"

#       mess_with_vars(one, two, three)

#       puts "one is: #{one}"
#       puts "two is: #{two}"
#       puts "three is #{three}"

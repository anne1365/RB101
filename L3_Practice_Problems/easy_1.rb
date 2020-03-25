=begin
1.) numbers = [1,2,2,3]
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

2.) a. != - checks values of two operands and returns true if two
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
puts "3.)"

advice = "Few things in life are as important as house training your pet dinosaur."
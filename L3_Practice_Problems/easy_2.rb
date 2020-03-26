#1.)  CHECKING PRESENCE OF OBJ IN HASH
      ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

      p ages.include?("Spot")
      p ages.key?("Spot")
      p ages.has_key?("Spot")
      p ages.member?("Spot")


#2.)  STRING MANIPULATIONS
      munsters_description = "The Munsters are creepy in a good way."

      p munsters_description.swapcase!
      p munsters_description.capitalize!
      p munsters_description.downcase!
      p munsters_description.upcase!


#3.)  APPENDING HASH VALUES
      ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

      more_ages = {"Marilyn" => 22, "Spot" => 237}
      ages.merge!(more_ages)
      p ages


#4.)  SEARCHING STRINGS
      advice = "Few things in life are as important as house training your pet dinosaur."

      p advice.include? ("Dino")
      p advice.match?("Dino")


#5.)  ALTERNATE WAYS TO WRITE ARRAYS
      flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
      p flinstones


#6.)  ADDING TO ARRAY
      flinstones << "Dino" #can use Array#concat or Array#push
      p flinstones

    
#7.)  ADDING MULTIPLE ITEMS TO ARRAY --> Array#insert
      flinstones.insert(0, 'Dino', 'Hoppy')
      #flintstones.push("Dino").push("Hoppy")
      #flintstones.concat(%(Dino Hoppy))
      p flinstones


#8.)  SHORTENING A STRING
      advice = "Few things in life are as important as house training your pet dinosaur."

      p advice.slice("Few things in life are as important as ")
      p advice

      p advice.slice!(0, advice.index('house'))
      p advice

      #Using slice rather than slice! means our changes are not made to the
      #original object.

     
#9.)  COUNTING OCCURENCES OF A CHAR IN A STRING
      statement = "The Flintstones Rock!"
      puts statement.count('t')


#10.) CENTERING TEXT
      title = "Flintstone Family Members"
      p title.center(40)
      


#1.)  ASCII ART & ITERATION
      string = "The Flintsones Rock!"      
      10.times {puts string.prepend(" ")}
      
      10.times { |n| puts (" " * n) + "The Flintstones Rock!"}


#2.)  DEBUGGING
      puts "the value of 40 + 2 is " + (40 + 2).to_s
      puts "the value of 40 + 2 is #{40 + 2}"

      #when I run this I get a type error - "no implicit 
      #conversion of integer into string". This error can
      #be mitigated by 1.) calling .to_s method on (40+2),
      #and 2.) use string interpolation. The type error was
      #due to the fact that (40+2) results in an integer
      #and it is being concatenated to a string


#3.)  REFACTORING
      def factors(number)
        divisor = number
        factors = []
        
        while divisor > 0 do
          factors << number / divisor if number % divisor == 0
          divisor -= 1
        end
        factors
      end
      
      #tests
      p factors(10)
      p factors(1)
      p factors(0)
      p factors(-2)

      #point of number % divisor == 0 is to determine which
      #numbers divide into number evenly (the factors)
      #the "factors" line is there to ensure that the
      #factors array is returned (is the last line evaluated)


#4.)  METHODS THAT MUTATE & METHODS THAT DON'T
      #There is a difference. The '<<' method mutates the
      #caller and the '+' operator does not. While it sounds like 
      #Alyssa wants to have a single object (the rolling buffer), 
      #she will actually be creating a brand new array (a copy
      #of the original) every time this method is called. The
      #'<<' method will allow the same array to be accessed and 
      #modified. 


#5.)  DEBUGGING
      num = 15

      def fib(first, second, limit)
        while first + second < limit
          sum = first + second
          first = second
          second = sum
        end
        sum
      end

      result = fib(0,1, num)
      puts result

      #Methods have stringent scoping rules. Unless a variable
      #is passed to the method via a parameter as an argument,
      #it isn't available within the method. Adding a limit 
      #parameter would be one solution for this. 


#6.)  IMMUTABLE VARIABLES
      answer = 42
      
      def mess_with_it(some_number)
        some_number += 8 #--> 50        
      end
      
      new_answer = mess_with_it(answer) #--> 50
      p answer.object_id #--> 85
      answer = answer - 8 #--> 34
      p answer.object_id #--> 69

      #numbers are immutable in ruby, meaning that any attempts
      #to change the value of an object containing a number will 
      #result in a new object being created instead


#7.)  MUTATED OR NAH?
      munsters = {
        "Herman" => { "age"=> 32, "gender" => "male"},
        "Lily" => { "age" => 30, "gender" => "female"},
        "Grandpa" => { "age" => 402, "gender" => "male"},
        "Eddie" => { "age" => 10, "gender" => "male"},
        "Marilyn" => { "age" => 23, "gender" => "female"}
      }
      p munsters.object_id

      def mess_with_demographics(demo_hash)     
        a = {}.merge(demo_hash)
        p ("#{a.object_id} THIS IS A")
        p demo_hash.object_id
        a.values.each do |family_member, val|
          family_member["age"] += 42
          family_member["gender"] = "other"
        end
        a
      end
      pp munsters
      p munsters.object_id

      pp mess_with_demographics(munsters)
      pp munsters
      p munsters.object_id


      #This method will not ransack the data because assignment
      #operators do not mutate the caller. The hash returned from
      #the method call will be altered, but not the original object.

      #After running this, I was totally off. Since 'demo_hash' references
      #the same object as the 'munsters' hash, the munsters hash is
      #modified. I can't figure out how to prevent this mutation *sigh*
      

#8.)  EXPRESSIONS AS METHOD ARGUMENTS
      def rps(fist1, fist2)
        if fist1 == "rock"
          (fist2 == "paper") ? "paper" : "rock"
        elsif fist1 == "paper"
          (fist2 == "scissors") ? "scissors" : "paper"
        else
          (fist2 == "rock") ? "rock" : "scissors"
        end
      end
      
      puts rps("rock", "paper") #--> paper


#9.)  RETURN VALUES
      def a(b = "no")
        "yes" #--> this is the value returned...
      end

      def c(d = "no")
        d == "no"? 'yes' : 'no'
      end

      p c(a) #so this will eval to no, because yes 
             #doesn't = no



      

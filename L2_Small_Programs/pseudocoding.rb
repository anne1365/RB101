=begin
1. a method that returns the sum of two integers  
  CASUAL: 
  - the method will take two integers as arguments 
  - a new variable "sum" will equal the sum of the two numbers
  - sum will be returned 

  FORMAL: 
  START
    # Given two integers

    SET sum = (first integer) + (second integer)
    return sum
  END




2. a method that takes an array of strings, and returns a string that is all those 
   strings concatenated together   
    CASUAL: 
     - method will accept array as an argument
     - a string variable will be set to nil to hold concatenated string
     - the array with be iterated over, and each element will be added to the string, 
       followed by a space
     - when the array is empty the loop will be exited
     - the string will be returned
     
    FORMAL: 
    START       
      # given array of strings
       
      SET output string = nil

      WHILE array length > 0
        output string = first array element + " "
        remove first array element
      END 

      return output string 
    END 




3. a method that takes an array of integers, and returns a new array 
   with every other element
    CASUAL:
    - method will accept array of numbers as an argument
    - a new array variable will be created (currently empty)
    - an index variable will be created and set equal to 0, to match the index
    - we will call .odd? on index to determine whether to push elements to 
      the new array
    - we will exit the loop when index is greater than the array's length
    - the new array will be returned

    FORMAL:
    START      
      # given array of integers

      SET index = 0
      SET new array = []

      WHILE index <= array length
        if index + 1 is odd
          push array[index] to new array
          index += 1
        else
          index += 1 
      END

      return new array
    END
=end




#1 
def add(num_one, num_two)
  sum = num_one + num_two
  return sum
end

puts add(2,3) #--> 5

#2
def concat(strings)
  output = ""
    while strings.empty? == false
    output = output + strings[0] + " "
    strings.shift
    end
  return output
end

things = ["thing", "object", "stuff", "being"] #--> "thing object stuff being"
puts concat(things)

#3
def oddArray(integers)
  index = 0
  new_array = []
  
  while index <= integers.length
    if (index + 1).odd?
      new_array << integers[index]
      index += 1
    else
      index += 1
    end
  end
  
  return new_array
end

numbers = [2, 34, 4, 5, 7, 67, 21] 
print oddArray(numbers) #--> [2, 4, 7, 21]

 

    

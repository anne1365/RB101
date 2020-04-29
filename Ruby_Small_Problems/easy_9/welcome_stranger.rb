=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when
combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and
:occupation, and the appropriate values. Your method should return a greeting that uses the person's full name,
and mentions the person's title and occupation.


UNDERSTANDING THE PROBLEM:
  INPUTS  --> 1.) array containing a name
              2.) hash containing title and occupation keys
  OUTPUTS --> message to user that integrates all inputted info
  QUESTIONS:
  RULES:
    EXPLICIT:
      - array contains 2 or more elements forming a name
      - hash contains two keys
      - method should return greeting that uses all inputted info

=end # ----------------------------------------------------------------------------------------------------------

def greetings(name, job)
  "Hi #{name.join(' ')}! Nice to have a #{job[:title]} #{job[:occupation]} around."
end


#Example:
p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
p greetings(['Annerino', 'Joneserino'], {title: 'Master', occupation: 'Deep Sea Welder'})
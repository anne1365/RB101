=begin
UNDERSTANDING THE PROBLEM:
  INPUTS  --> array of strings
  OUTPUTS --> list of elements alongside # of occurences
  RULES:
    - words in the array are case-sensitive
    - list of elements and # of occurences doesn't need to be 
      in numerical order
  MENTAL MODEL: The method will accept an array of strings. We will iterate
  through the array, and for each element we'll evaluate whether it's new or whether
  we have accounted for it already 

EXAMPLES / TEST CASES: 
  cats = [
    'sherlock', 'SHERLOCK', 'orange', 'cat', 'cat', 'bengal', 'cat', 'sherlock'
  ]
  count_occurrences(cats) --> sherlock => 2, SHERLOCK => 1, orange => 1, 
                             cat => 3, bengal => 1

DATA STRUCTURE: 
  INPUTS  --> array
  OUTPUTS --> hash - perfect for this application bc hash sizes can be changed,
  and we can look up each array element as we go

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - set variable equal to empty hash
    - begin iteration through input array
    - for each element search hash for matching key
        - if key is present, increment value
        - if not, add key value pair
    - post iteration, return hash 

  FORMAL:
    START method(array x)
      SET y = new hash
      FOR EACH element of x
        IF novel, add to hash (key = string, value = 1)
        ELSE increment value for prexisting key by 1
      END
      return y
    END
       
=end

def count_occurrences(input_array)
  ary_elements = Hash.new
  
  input_array.each do |element| 
    element = element.downcase #<-- FURTHER EXPLORATION-- case insensitivity
    
    if ary_elements.has_key?(element)
      ary_elements[element] += 1
    else 
      ary_elements[element] = 1
    end
  end
  
  ary_elements
end

cats = [
  'sherlock', 'SHERLOCK', 'orange', 'cat', 'cat', 'bengal', 'cat', 'sherlock'
]

pp count_occurrences(cats)


=begin
LS ANSWER -- 
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
=end



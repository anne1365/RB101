=begin
1.) CLASS AND INSTANCE METHODS
    file::path - path --> filename
    returns the pathname used to create file as a string - class method
    class methods called on classes

    file#path - path(path) --> string
    returns string representation of the path - instance method
    instance methods called on objects

2.) OPTIONAL ARGUMENTS (Date class)
    puts(obj, ...) --> nil
    puts called wothout arguments outputs a single new line
    new line characters are placed between all objects passed to the method

    the Date class - the Date::new method is a class method - 
    METHOD SIG - new([year = 4712[, month=1[, mday=1[, start=Date::ITALY]]]]) --> date
    the [] show that all arguments are optional (don't use brackets when
    using method)
    
    require 'date'

    puts Date.new --> -4712-01-01
    puts Date.new(2016) --> 2016-01-01
    puts Date.new(2016, 5) --> 2016-05-01
    puts Date.new(2016, 5, 13) --> 2016-05-13

    require 'date'
    puts Date.new
    puts Date.new(2016)

3.) DEFAULT ARGS IN MIDDLE (Positional arguments)
    - def method(a, b, c = 3, d = 4)
        p[a, b, c, d]
      end

      method(1,2) --> [1, 2, 3, 4]
      method(1, 2, 5) --> [1, 2, 5, 4]

    - def method(a, b = 2, c = 3, d)
        p [a, b, c, d]
      end

      method(1, 4) --> [1, 2, 3, 4]
      method(1, 5, 6) --> [1, 5, 3, 6]

      Positional arguments are filled out first, then
      default arguments are set with any values supplied,
      then default values are applies to anything remaining. 


4.) MANDATORY BLOCKS (Array#bsearch)
    a = [1, 4, 8, 11, 15, 19]
    p a.bsearch{|x| x > 8}

    bsearch uses a binary search algorithm, a fast way 
    to find the first element of an array that satisfies
    our criteria

    binary search algorithms allow quick searching for
    a target value within a sorted array by comparing
    target value to middle of array, disregarding
    whichever half is now inapplicable, and repeating
    this until the target is found


5.) MULTIPLE SIGNATURES (Array#fetch)
    Array#fetch -- will return element @ position index,
    but will validate that the element exists first
    - if index is not in range, an error will be thrown, 
      but addition of second parameter can avoid this,
      as that targ will act as a default value
    - if an index that is out of range is provided with
      a block as an argument, the block will be executed
      if the index is out of range
    - negative index values count from end of array
    
    a = %w(a b c d e)
    puts a.fetch(7) --> error thrown
    puts a.fetch(7, 'beats me') --> 'beats me'
    puts a.fetch(7) {|x| x**2} --> 49
    

6.) KEYWORD ARGUMENTS (.step)
    invokes the given block with the sequence of numbers starting at
    a number, incremented by  another number

    5.step(to: 10, by: 3) { |value| puts value} --> 5, 8


7.) PARENT CLASSES
    - Every class that inherits from a superclass also inherits all of 
      its methods
    - Superclasses can be overridden by their subclasses


8.) INCLUDED MODULES (Array#min) 
    a = [1, 2, 3, 4] 
    a.min(2) {|x, y| x <=> y} --> [1, 2]
    a.sort.take(2) --> [1, 2] (diff method equiv result) 
    
    - Ruby doesn't use multiple inheritance, thus avoiding many of the 
      associated pitfalls
    - Instead Ruby uses "mix-in modules" which allow classes to share 
      behavior sans inheritance
    - The include method allows a class to use a mix-in module
    - Enumerable is one of most commonly used mix-ins


9.) DOWN THE RABBIT HOLE (YAML::load_file)
    The Psych module contains a method for loading YAML files, as well
    as a bevy of other methods that will be helpful when working with 
    YAML files
=end

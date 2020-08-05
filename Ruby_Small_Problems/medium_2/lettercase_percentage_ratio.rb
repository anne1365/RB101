=begin
  PROBLEM:    given a string, the method should return a hash containing
              3 entries that list the percentage of lowercase letters,
              uppercase letters, and non-alphabetical characters  

  INPUT:      string  
  OUTPUT:     hash

  QUESTIONS:  what if the input isn't a string?

  ALGORITHM:  
    - assign variables to the # of lowercase , uppercase, non-alpha chars (via regex)
       /string size * 100
    - output appropriate hash
=end  

def letter_percentages(str)
  lowercase = str.scan(/[[:lower:]]/).size / str.size.to_f * 100
  uppercase = str.scan(/[[:upper:]]/).size / str.size.to_f * 100
  non_alpha = str.scan(/[^A-Za-z]/).size   / str.size.to_f * 100
  
  {
    lowercase: lowercase.round(2),
    uppercase: uppercase.round(2),
    neither:   non_alpha.round(2)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }


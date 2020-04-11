DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string_number)
  sign = ''
  tmp = string_number.chars

  sign = tmp.shift if (tmp.include?('+')) || (tmp.include?('-'))

  tmp.map! { |char| DIGITS[char] }
  num = tmp.inject{|result, element| result * 10 + element}
  
  num *= -1 if sign == '-'
end

p string_to_integer('-543')

#string[1..-1] --> allows us to extract string starting from index one,
#all the way to the last index

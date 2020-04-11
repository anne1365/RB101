DIGITS = {
  0 => '0',  1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)'-12'
  tmp = number.digits.reverse!.map! { |num| DIGITS[num] }
  tmp.inject('') {|result, element| result << element}
end

p integer_to_string(4321)# == '4321'
p integer_to_string(570)# == '570'

#---------------------------------------------------------

def signed_int_to_string(number)
  negative = false
  
  if number < 0
    negative = true
    number *= -1
  end

  str = integer_to_string(number)

  str.prepend('-') if negative == true

  str
end

p signed_int_to_string(-321)
p signed_int_to_string(234)
p signed_int_to_string(-20394875)

#---------------------------------------------------------


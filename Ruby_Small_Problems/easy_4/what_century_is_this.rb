=begin
PROBLEM:
Write a method that takes a year as input and returns
the century. The return value should be a string that
begins with the century number, and ends with st, nd, rd, or
th as appropriate for that number.
New centuries begin in years that end with 01. So, the
years 1901-2000 comprise the 20th century.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer - year
  OUTPUTS --> string inc. century number, + st/nd etc. i.e.'20th'
  QUESTIONS:
    - what would we do if the year were BCE?
    - what if a non-integer is passed to this method?
  RULES:
    EXPLICIT:
      - method takes an integer (year) as input
      - the return value is a string containing the century number,
        with a suffix concatenated onto the end ('st', 'th' etc.)
1234.
    IMPLICIT:
      - method can calculate century numbers far into the future

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - for suffix method: 
      - if the number ends with 4, 5, 6, 7, 8, 9, 11, 12, 13 --> 'th'
      - if the number ends with 1 (but not 11) --> 'st'
      - if the number ends with 2 (but not 12) --> 'nd'
      - if the number ends with 3 (but not 13) --> 'rd'

        return suffix string
        return century and suffix together in main method
  

  FORMAL:
  method get_century_number(year)
  if year % 100 != 0
      (year / 100) + 1
    else 
      (year / 100)
    end
  end
=end


def century(year)
  century_number = get_century_number(year)
  suffix = get_suffix(century_number.to_s)  
  century_number.to_s << suffix 
end


def get_century_number(year)  
  if year % 100 != 0
    (year / 100) + 1
  else
    year / 100  
  end
end


def get_suffix(century_number)  
  if    !(century_number.end_with?('11')) && (century_number.end_with?('1'))
    'st'
  elsif !(century_number.end_with?('12')) && (century_number.end_with?('2'))
    'nd'
  elsif !(century_number.end_with?('13')) && (century_number.end_with?('3'))
    'rd'
  else
    'th'
  end
end


p century(2000)
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


=begin
LS Solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11,12,13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
=end
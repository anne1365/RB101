=begin ----------------------------------------------------------------------------------------------------------
PROBLEM: write a method that accepts an integer as an argument (representing a year after 1752) and returning an
         integer that represents the number of Friday the 13ths in the given year

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer - year after 1752
  OUTPUTS --> integer - # of Fridays the 13ths in given year
  
  QUESTIONS: 
  - is there a pattern to how many Friday the 13ths there are in a given year?
      --> # of F13s in a year determined by dominical letter, which is determined by the day of the week a year
          starts on as well as whether it's a leap year
  - how many friday the 13ths can there be in any given year?
      --> at least one, no more than three
  - friday the 13th occurs in any month that begins on a sunday

  - Dominical letters - determined by first and last days of the year - if first and last days of the year
    are different days of the week, that's a leap year, and that year has two dominical letters
    2020 --> ED
    
     COMMON YEARS -----------------------------------------
    |  Day of Week       | 7    6    5    4    3    2    1 |                              
    |  Dominical Letter  | A    B    C    D    E    F    G |
    |  Jan 1st Day       | Sun  Sat Fri  Thu  Wed  Tue  Mon|
    |  # F13s that year  | 2    1    1    3    1    2    2 |
    |                    |                                 |
     LEAP YEARS  --------|---------------------------------|
    |  Dominical Letters | AG   BA   CB   DC   ED   FE   GF|
    |  # F13s that year  | 3    1    1    2    2    1    2 |
     ------------------------------------------------------

  RULES:
    EXPLICIT:
      - years greater than 1752 
    IMPLICIT:

  IDEAS: 1 f13 if != leap year & 1-1 Sat Fri Wed
         1 f13 if == leap year & 1-1 Sat Fri Tue
         2 f13 if != leap year & 1-1 Sun Tue Mon
         2 f13 if == leap year & 1-1 Mon Wed Thu
         3 f13 if != leap year & 1-1 Thu
         3 f13 if == leap year & 1-1 Sun

DATA STRUCTURE: two hash constants (representing common and leap years) will have keys 1-7 (day of week for first
                day of year) and a value representing the number of F13s in a year of that type starting on that
                day of the week (the dominical letter, though that won't be used)

ALGORITHM: check if a year is a leap year, if it is, check the first day of the year and use case statement to
           return # of f13s depending on the day of the week 1-1 is

PSEUDOCODE:
START method(year)
  SET first day variable

  IF year is a leap year? 
    case first day
    when 2, 5, 6
      1
    when 1, 3, 4
      2
    else
      3
    end
  ELSE
    case first day
    when 3, 5, 6
      1
    when 1, 2, 7
      2
    else
      3
    end
  end
END method    
=end # ----------------------------------------------------------------------------------------------------------

require 'date'

def friday_13th(year)
  year = Date.new(year)
  day1 = year.cwday

  if year.leap?
    case day1
    when 2, 5, 6
      1
    when 1, 3, 4
      2
    else
      3
    end
  else
    case day1
    when 3, 5, 6
      1
    when 1, 2, 7
      2
    else
      3
    end
  end
end

p friday_13th(1987) == 3
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
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
    IMPLICIT:

  IDEAS:

DATA STRUCTURE: two hash constants (representing common and leap years) will have keys 1-7 (day of week for first
                day of year) and a value representing the number of F13s in a year of that type starting on that
                day of the week (the dominical letter, though that won't be used)

ALGORITHM:

PSEUDOCODE:

=end # ----------------------------------------------------------------------------------------------------------

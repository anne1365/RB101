=begin
PROBLEM:
Create a simple tip calculator. The program should
prompt for a bill amount and a tip rate. The program
must compute the tip and then display both the tip
and the total amount of the bill.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> string (bill amt), string (tip %)
  OUTPUTS --> string listing float tip total and float bill total
  RULES:
   - tip percentage should be entered as a whole # (2%, not 0.02)
   - method should return floats rounded to 2 decimal places
  MENTAL MODEL:
  program will ask user for the bill total (pretax) and the percentage tip
  they would like to leave. String will be outputted enumerating the tip amt
  as well as the total bill (pretax)

EXAMPLES / TEST CASES: 
  - bill $200 / tip 15% --> tip total $30 / bill total $230

DATA STRUCTURE: 
  INPUTS  --> strings
  OUTPUTS --> string message

ALGORITHM / PSEUDOCODE:
  CASUAL: 
    - prompt user for bill total - save value 
    - promt user for tip percentage - save value
    - set variable for tip amount = bill * (tip percentage / 100)
    - set variable for bill total = bill + tip amount
    - display message relaying this info to user

  FORMAL:
  START 
    PRINT "bill?"
    GET bill_amt

    PRINT "tip %?"
    GET percent_tip

    SET tip_amt = bill_amt * (percent_tip / 100)
    SET bill_total = bill_amt + tip_amt

    PRINT "Tip is tip_amt
           Total bill is bill_total"
  END

=end

puts "What is the bill?"
bill_amt = gets.to_f

puts "What is the tip percentage?"
percent_tip = gets.to_f

tip_amt    = (bill_amt * (percent_tip / 100)).round(2)
total_bill = (bill_amt + tip_amt).round(2)

# BELOW MODIFIED FOR FURTHER EXPLORATION

puts "The tip is $#{format("%.2f", tip_amt)}"
puts "The total is $#{format("%.2f", total_bill)}"
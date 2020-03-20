=begin -----------------------------------------------------------
UNDERSTANDING THE PROBLEM
 - INPUTS: loan amount, APR, loan duration
 - OUTPUTS: loan duration in months, monthly interest rate
 - MAKING REQUIREMENTS EXPLICIT:
 - MENTAL MODEL: the program will take the user inputted
   loan duration in years and loan amount, and calculate the
   monthly loan payment and the loan duration in months
 - RULES:
   - loan amount must be greater than 0
   - Loan duration must be greater than 0
 - THOUGHTS:
   - the program automatically lacks robustness because
     APR won't be updated automatically
   - user should probably be notified of an error
     when loan amount, APR, or loan duration are 0

EXAMPLES/TEST CASE
 - VALIDATE UNDERSTANDING OF PROBLEM:
     - Test 1: Loan Amount: $9500
               Loan Duration: 3 years
       OUTCOME: $277 per month for 36 months
     - Test 2: Loan Amount: $30,000
               Loan Duration: 2.5 years
       OUTCOME: $1,041 per month for 30 months

DATA STRUCTURE
 - HOW WILL WE REPRESENT DATA WHEN CONVERTING INPUT TO OUTPUT?
   - loan amount, APR, and loan duration in years ought to be floats

ALGORITHM --> PSEUDOCODE:
Casual:
- welcome user
- ask user for loan amount
- save response in variable - complain if response = 0
- ask user for loan duration in years
- save response in variable - complain if response = 0
- ask user for APR
- save response in variable - complain if response = 0
- pass APR through method that yields monthly interest - save in variable
- pass loan duration through method that yields loan
  durations in months - save in variable
- pass monthly interest, loan amount, and loan duration in months through
  equation
- save equation result to variable
- output report to user "at an APR of _, your monthly payment is _ over _
  months"
- thank user for using the car payment calculator

Formal:
START

  METHOD1(
    duration_years)
    duration_months =
    duration_years * 12
  END

  METHOD2(apr)
    mpr = apr / 12
  END

  PRINT welcome message

  PRINT to get user APR in percent
  GET APR
  SET apr = APR / 100
  METHOD2(apr)

  PRINT to get loan amount
  GET loan amount
  SET loan_amount = loan amount

  PRINT to get loan duration in years
  GET loan duration in years
  SET
  duration_years = loan duration in years
  METHOD1(
    duration_years)

  SET result = loan_amount * (mpr / (1 - (1 - mpr)**(-duration_months)))
  PRINT = equation outcome
  PRINT = thanks for using my calculator
END
=end -------------------------------------------------------------------

# CODE:
def display_prompt(message)
  puts("=> #{message}")
end

def duration_to_months(duration_years)
  duration_years.to_f * 12
end

def monthly_interest(apr)
  apr.to_f / 12
end

def due_monthly(mpr, duration_months, loan_amount)
  loan_amount.to_f * (mpr / (1 - (1 + mpr)**(-duration_months)))
end

display_prompt("Welcome to the car payment calculator!")

apr = ""
loop do
  display_prompt("What is your APR in percent? (i.e. 5 for 5%)")
  apr = gets.chomp

  if apr.to_f == 0.0
    puts "Error: APR must be greater than 0%."
  else
    break
  end
end

mpr = monthly_interest(apr)

loan_amount = ""
loop do
  display_prompt("What is your loan amount?")
  loan_amount = gets.chomp

  if loan_amount.to_f == 0.0
    puts "Error: Loan amount must be greater than $0."
  else
    break
  end
end

duration_years = ""
loop do
  display_prompt("What is your loan duration in years?")
  duration_years = gets.chomp

  if duration_years.to_f == 0.0
    puts "Error: Loan duration must be greater than 0 years."
  else
    break
  end
end

duration_months = duration_to_months(duration_years)
monthly_payment = due_monthly(mpr, duration_months, loan_amount)

display_prompt("With an APR of #{apr.to_f}%:
        Your payment is: $#{monthly_payment.truncate(2)} per month
        Your loan duration is: #{duration_months.to_i} months.")
display_prompt("Thanks for using the car payment calculator!")

=begin --------------------------------------------------------------
OPTIMIZATIONS THAT COULD BE MADE:
- adding further validation - is a value empty? negative?
- could add a meta loop offering repeated calculations
- a line as a divider "---" is a good idea

THINGS TO LOOK INTO MORE:
- format method - looks like there's a lot that can be done with this
=end ----------------------------------------------------------------

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator! Please enter your name: ")

name = ""
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name!")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  number1 = ''
  loop do # first number loop
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Error: not a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Error: not a valid number.")
    end
  end

  operator_prompt = <<-MSG # allows multiline strings
    What operation would you like to perform?
      1 - addition
      2 - subtraction
      3 - multiplication
      4 - division
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Error: Must choose 1, 2, 3, or 4!")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers.. ")
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The number is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again")
  response = Kernel.gets().chomp()
  break unless response.downcase == 'y'
end

prompt("Thanks for using the calculator, #{name}!")

=begin
THINGS TO THINK ABOUT:
1.  If the input can be converted to an integer and converted back to an
    integer without loss, it's an integer. If 's' is converted to an integer
    it becomes '0', and when it's converted back to a string it's still '0'.
    The input in this case is not equal before and after this validation,
    but it would be had the input been an integer.
3.  The operation_to_message method is dangerous because
    it depends on the string (i.e. 'Addition') being the
    last line executed. If there were more lines of
    code after the case statement this would no
    longer be true. Prefacing the strings with 'return'
    allows us to deliberately determine the last executed line.
5.  We can omit 'Kernel' because it is a module included by class object.
    Since everything in Ruby is an object, everything also has access to Kernel
=end

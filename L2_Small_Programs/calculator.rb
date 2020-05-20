# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require "yaml"
MESSAGES = YAML.load_file('calculator_config.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f().to_i().to_s() == num
end

def operation_to_message(operator)
  word = case operator
         when '1'
           MESSAGES[:add]
         when '2'
           MESSAGES[:sub]
         when '3'
           MESSAGES[:mult]
         when '4'
           MESSAGES[:div]
         end

  word
end

prompt(MESSAGES[:get_name])

name = ""
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES[:name_validation])
  else
    break
  end
end

prompt("#{MESSAGES[:greet_by_name]} #{name}!")

loop do # main loop
  number1 = ''
  loop do # first number loop
    prompt(MESSAGES[:get_first_num])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES[:invalid_num])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES[:get_second_num])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES[:invalid_num])
    end
  end

  prompt(MESSAGES[:get_desired_operator])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES[:invalid_operator])
    end
  end

  prompt("#{operation_to_message(operator)} #{MESSAGES[:report_operation]}")
  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("#{MESSAGES[:report_result]} #{result}")

  prompt(MESSAGES[:another_calculation])
  response = Kernel.gets().chomp()
  break unless response.downcase == 'y'
end

prompt("#{MESSAGES[:goodbye]} #{name}!")

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

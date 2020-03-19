loop do
  puts 'Please enter a number: '
  num_one = gets.chomp
  puts 'Please enter another number: '
  num_two = gets.chomp

  if num_one.to_i.to_s != num_one || num_two.to_i.to_s != num_two
    puts 'Error: only numeric characters may be used.'
    next
  end

  puts 'What type of operation would you like to perform? (+, -, *, /, or exit)'
  operation = gets.chomp

  case operation
  when 'add'
    puts num_one.to_i + num_two.to_i
  when 'subtract'
    puts num_one.to_i - num_two.to_i
  when 'multiply'
    puts num_one.to_i * num_two.to_i
  when 'divide'
    puts num_one.to_f / num_two.to_f
  when 'exit'
    puts 'Thanks for using the calculator app!'
    break
  else
    puts 'Invalid operation-please select +, -, *, /, or exit'
  end
end

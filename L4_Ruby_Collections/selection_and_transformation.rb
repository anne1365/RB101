produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  items = produce.keys
  counter = 0
  fruit = {}
  

  loop do 
    break if counter == produce.size

    if produce[items[counter]] == 'Fruit'
      fruit[items[counter]] = produce[items[counter]]
    end 
    counter += 1
  end
  fruit
end

=begin
LS METHOD

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    #this has to be at the top in case produce_list is an empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

This method is much more readable than the one I wrote, in which it
isn't clear which piece of data is the original key and which is the original value.
=end

p select_fruit(produce)
p "Original array: #{produce}"




# def double_numbers(numbers)
#   counter = 0

#   loop do 
#     break if counter == numbers.size

#     numbers[counter] *= 2 

#     counter += 1
#   end

#   numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers(my_numbers)

# p my_numbers




def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)

p 




def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit')
p general_select(produce, 'Vegetable')
p general_select(produce, 'Meat')




def multiply(numbers, num)
  counter = 0
  multiplied_numbers = []

  loop do 
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * num
    
    counter += 1
  end

  multiplied_numbers
end

p my_numbers = [1, 2, 3, 4, 5, 6, 7, 8]
p multiply(my_numbers, 2)
p my_numbers




def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

question = 'How many times does a particular character appear?'
p select_letter(question, 'a').size
p select_letter(question, 't')
p select_letter(question, 'z')




alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end

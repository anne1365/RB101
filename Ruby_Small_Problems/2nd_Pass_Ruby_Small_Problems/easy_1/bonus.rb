=begin
I  +int & boolean
O  int, 0 or 1/2 input int
P  ternary
=end

def bonus(salary, bonus)
  bonus == true ? salary/2 : 0
end

puts bonus(2800, true)
puts bonus(1000, false)
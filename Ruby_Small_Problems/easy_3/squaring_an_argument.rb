
def multiply(num1, num2)
  num1 * num2
end

def square(n)
  (multiply(n, n))
end

#FURTHER EXPLORATION
def power(n, power)
  (multiply(n, n**(power - 1)))
end

p square(5) 
p square(8)
=begin
  Recursive method have three primary qualities:
   1. They call themselves at least once
   2. They contain a condition that stops the recursion.
   3. They use the resultreturned by themselves.


=end

def fibonacci(int)
  (int <= 2) ? (1) : (fibonacci(int - 1) + fibonacci(int - 2))
end

p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(40)
# 1.upto(15) do |i|
#   puts i
# end

def fizzbuzz(a, b)
  result = []
  
  a.upto(b) do |i|
    if i % 5 == 0 && i % 3 == 0
      result << 'FizzBuzz'
    elsif i % 5 == 0
      result << 'Buzz'
    elsif i % 3 == 0
      result << 'Fizz'
    else 
      result << i 
    end
  end

  result.join(', ')
end

print fizzbuzz(30, 35)
=begin ----------------------------------------------------------------------------------------------------------
PROBLEM:
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light
that is initially off. You walk down the row of switches and toggle every one of them. You go back to the
beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back
again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until
you have been through n repetitions.
Write a method that takes one argument, the total number of switches, and returns an Array that identifies which
lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

        1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16
        1   2   2   3   2   4   2   4   3   4   2   6   2   4   4   5  <-- number of times flipped
0  -->  X   X   X   X   X   X   X   X   X   X   X   X   X   X   X   X
1  -->  O   O   O   O   O   O   O   O   O   O   O   O   O   O   O   O
2  -->  O   X   O   X   O   X   O   X   O   X   O   X   O   X   O   X
3  -->  O   X   X   X   O   O   O   X   X   X   O   O   O   X   X   X
4  -->  O   X   X   O   O   O   O   O   X   X   O   X   O   X   X   O
5  -->  O   X   X   O   X   O   O   O   X   O   O   X   O   X   O   O
6  -->  O   X   X   O   X   X   O   O   X   O   O   O   O   X   O   O
7  -->  O   X   X   O   X   X   X   O   X   O   O   O   O   O   O   O
8  -->  O   X   X   O   X   X   X   X   X   O   O   O   O   O   O   X
9  -->  O   X   X   O   X   X   X   X   O   O   O   O   O   O   O   X
10 -->  O   X   X   O   X   X   X   X   O   X   O   O   O   O   O   X
11 -->  O   X   X   O   X   X   X   X   O   X   X   O   O   O   O   X
12 -->  O   X   X   O   X   X   X   X   O   X   X   X   O   O   O   X
13 -->  O   X   X   O   X   X   X   X   O   X   X   X   X   O   O   X
14 -->  O   X   X   O   X   X   X   X   O   X   X   X   X   X   O   X
15 -->  O   X   X   O   X   X   X   X   O   X   X   X   X   X   X   X
16 -->  O   X   X   O   X   X   X   X   O   X   X   X   X   X   X   O

The switches left on are the switches numbered with square numbers

UNDERSTANDING THE PROBLEM:
  INPUTS  --> a number, presumably positive, which corresponds to the number of switches and the #
              of repetitions
  OUTPUTS --> array enumerating the switches still on after n repetitions (the square numbers)
  QUESTIONS:
    - how can we single out square numbers?
    - can we assume input numbers will be positive?
  RULES:
    EXPLICIT:
      - integer is the input; array is the output
      - there are n lights and n rounds
  IDEAS:
    - a method or algorithm that singles out square numbers would solve this problem quickly

DATA STRUCTURE:
  INPUTS  --> integer
  OUTPUTS --> array

ALGORITHM / PSEUDOCODE:

=end # ----------------------------------------------------------------------------------------------------------

def lights(n)
  arr = []
  
  1.upto(Integer.sqrt(n)) do |i|
    arr << i**2 if i**2 <= n
  end
  
  arr
end

p lights(16)
p lights(5)
p lights(10)

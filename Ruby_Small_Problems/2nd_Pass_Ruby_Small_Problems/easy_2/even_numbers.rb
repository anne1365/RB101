puts (1..99).to_a.select { |i| i.even? }

1.upto(99) {|i| puts i if i.even? }
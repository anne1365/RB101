def sum(int)
  int.to_s.chars.map(&:to_i).sum #int.digits.sum
end

puts sum(23)
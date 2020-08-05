puts [1, 2, 5, 3, 7].select{|n| n.odd?}.size > 1

def find_outlier(arr)
  arr.select{|n| n.even?}.size > 1 ? arr.select{|n| n.odd?}.first : arr.select{|n| n.even?}.first
end

p find_outlier([1, 2, 3, 5, 7])
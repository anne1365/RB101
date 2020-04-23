#ACCESSING ELEMENTS IN NESTED STRUCTURES-------------------------
arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

arr[0]              # => ["a", ["b"]]
arr[0][1][0]        # => "b"
arr[1]              # => { :b => "bear", :c => "cat" }
arr[1][:b]          # => "bear"
arr[1][:b][0]       # => "b"
arr[2][2]           # => "b"



#VAR REFERENCE---------------------------------------------------
a = [1, 3]
b = [2]
arr = [a, b]
arr # => [[1, 3], [2]]

p a.object_id
p arr[0].object_id
p arr

a[1] = 5

p a.object_id
p arr[0].object_id
p arr

arr[0][1] = 8
p arr # => [[1, 8], [2]]
p a   # => [1, 8]

p a.object_id
p arr[0].object_id

#SHALLOW COPIES---------------------------------------------------

# modification of the shallow copy
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

arr1 # => ["a", "b", "c"]
arr2 # => ["A", "B", "C"]

#modification of the objects within the shallow copy
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

p arr1 # => ["A", "B", "C"]
p arr2 # => ["A", "B", "C"]



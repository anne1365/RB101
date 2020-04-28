# #EXAMPLE 1
# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end
# # 1
# # 3
# # => [[1, 2], [3, 4]]

# =begin
# Line 1: 
# We are calling the .each method on a nested array. The array itslf contains two arrays, which
# each contain two integer elements. By calling the each method, we will be iterating through the two arrays
# inside of the broader array. 
# EACH INNER ARRAY IS PASSED TO THE BLOCK AND ASSIGNED TO THE VARIABLE ARR.

# Line 2:
# We will diplay the first element of each array to the console. The first loope will result in an output of 1,
# and the second, 3, as shown in lines 5 and 6.
# THE ARRAY#FIRST METHOD IS CALLED ON ARR AND RETURNS THE OBJECT AT INDEX 0 OF ARR. THE PUTS METHOD OUTPUTS A
# STRING REPRESENTATION OF THE RETURNED INTEGERS. PUTS RETURNS NIL, AND SINCE THIS THE LAST EVALUATED STATEMENT
# IN THE BLOCK, THE BLOCK'S RETURN VALUE IS NIL.

# Line 3: 
# The block is ended. Line 7 shows that the return value is the original collection, as is always the case
# when each is called.
# EACH DOESN'T DO ANYTHING WITH THE BLOCK'S RETURN VALUE, AND SINCE THE RETURN VALUE OF EACH IS THE CALLING OBJECT,
# THIS IS WHAT'S RETURNED.
# =end

# #EXAMPLE 2
# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
# end
# # 1
# # 3
# # => [nil, nil]

# =begin
# LINE(S)  |        ACTION      |      OBJECT     |  SIDE EFFECT  |      RETURN VALUE       | RETURN VALUE USED?  
# ------------------------------------------------------------------------------------------------------------------------------
#    1     |  Method call(map)  |   outer array   |    none       |   new array [0,0]       | no, shown on line 6
#   1-3    |  block execution   |  each sub-array |    none       |        nil              | yes, this is the value modified
#    2     |  method call(first)|  each sub-array |    none       |   el 0 of sub-array     | yes, used by puts
#    2     |  method call(puts) |  sub-array[0]   |outputs sub[0] |        nil              | yes, this is return value of block
# =end


# #EXAMPLE 3
# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
#   arr.first
# end
# # 1
# # 3
# # => [1, 3]

# =begin
# LINE(S)  |        ACTION      |      OBJECT     |  SIDE EFFECT  |      RETURN VALUE       | RETURN VALUE USED?  
# ------------------------------------------------------------------------------------------------------------------------------
#    1     |   method call(map) |  outer array    |   none        |    new array [1, 3]     |     no
#   1-4    |  block execution   |  sub-array      |   none        |    int @ sub[0]         |    yes, used by map to transform
#    2     |  method call(first)|  sub-array      |   none        |    sub[0] of two subs   |    yes, used by puts
#    2     |  method call(puts) | sub[0] of 2 subs| outputs sub[0]|       nil               |    no
#    3     |  method call(first)|  sub-array      |   none        |    sub[0] of two subs   |    yes, block return value
# =end


#MUATING WHILE ITERATING

def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,6,8,9])





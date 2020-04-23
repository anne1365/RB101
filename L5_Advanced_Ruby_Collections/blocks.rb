#EXAMPLE 1
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

=begin
Line 1: 
We are calling the .each method on a nested array. The array itslf contains two arrays, which
each contain two integer elements. By calling the each method, we will be iterating through the two arrays
inside of the broader array. 
EACH INNER ARRAY IS PASSED TO THE BLOCK AND ASSIGNED TO THE VARIABLE ARR.

Line 2:
We will diplay the first element of each array to the console. The first loope will result in an output of 1,
and the second, 3, as shown in lines 5 and 6.
THE ARRAY#FIRST METHOD IS CALLED ON ARR AND RETURNS THE OBJECT AT INDEX 0 OF ARR. THE PUTS METHOD OUTPUTS A
STRING REPRESENTATION OF THE RETURNED INTEGERS. PUTS RETURNS NIL, AND SINCE THIS THE LAST EVALUATED STATEMENT
IN THE BLOCK, THE BLOCK'S RETURN VALUE IS NIL.

Line 3: 
The block is ended. Line 7 shows that the return value is the original collection, as is always the case
when each is called.
EACH DOESN'T DO ANYTHING WITH THE BLOCK'S RETURN VALUE, AND SINCE THE RETURN VALUE OF EACH IS THE CALLING OBJECT,
THIS IS WHAT'S RETURNED.






=begin  
Example 7
Sorting nested data structures can be tricky, and it is important to be clear about the level at which you are sorting and which values you want to use to order your collection.

Say for example we have an array of nested arrays which contain numeric strings, and we want to sort the outer array so that the inner arrays are ordered according to the numeric value of the strings they contain. Take, for example, the following 4-element array of arrays.
=end


arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]


arr.sort_by! do |inner_array|
  inner_array.map do |number|
    number.to_i
  end
end  

p arr 
# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:

post_sorted_arr = [[1, 8, 3], [1, 6, 7], [1, 4, 9]]


new_array = arr.sort_by do |ary|
  ary.find_all do |num|
    num.odd?
  end 
end

p new_array
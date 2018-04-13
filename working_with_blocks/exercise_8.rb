=begin
For example, take the 2-element array below, where we only want to select integers greater than 13 but strings less than 6 characters. The trick here is that the elements are in a two layer nested array data structure.
=end

new_array = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |sub_array|
  sub_array.select do |item|
    if item.to_s.to_i == item
      item > 13
    else
      item.length < 6
    end
  end
end

p new_array




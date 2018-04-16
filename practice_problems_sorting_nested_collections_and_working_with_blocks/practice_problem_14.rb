# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

# The return value should look like this:
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]





hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


new_array = hsh.map do |hsh|

  if hsh[1][:type] == 'fruit'
    hsh[1][:colors].map { |str| str.capitalize }
  else
    hsh[1][:size].upcase
  end

end

p new_array
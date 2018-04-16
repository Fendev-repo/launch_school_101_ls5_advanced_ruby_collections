# Using the each method, write some code to output all of the vowels from the strings.


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |value|
  value.each do |item| 
    item.each_char do |char|
      puts char if ['a', 'e', 'i', 'o', 'u'].include?(char)
    end
  end
end

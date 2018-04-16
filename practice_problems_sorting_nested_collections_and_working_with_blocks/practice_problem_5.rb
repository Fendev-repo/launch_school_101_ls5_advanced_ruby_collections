# Given this nested Hash:
# figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


# option 1
total_age = 0
counter = 0
keys = munsters.keys

loop do 
  if munsters[keys[counter]]['gender'] == 'male'
    total_age += munsters[keys[counter]]["age"] 
  end

  counter += 1
  break if counter >= keys.length
end

p total_age



# option 2
total_age = 0

munsters.each_value do |hsh|
  total_age += hsh['age'] if hsh['gender'] == 'male'
end

p total_age
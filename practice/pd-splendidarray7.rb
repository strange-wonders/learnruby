#empty array here
generic_array = []

puts "Give me some words, and I'll give them back to you in alphabetical order. When you're done, just hit enter on an empty line."

#loop to enter data into the array
new_entry = gets.chomp #as long as *something* has been entered, the loop comes back for another entry into the array.
while new_entry != ""
  generic_array.push new_entry
  new_entry = gets.chomp
end

puts "All right! Here are your words in alphabetical order:"
#generic_array.sort
generic_array.sort{|a,b| a<=>b}.each do |word|
  
end
#generic_array.sort{|a,b| a.downcase <=> b.downcase}.each do |word|
generic_array.sort_by{|a| a.downcase}.each do |word|
  puts " * " + word
end

#sort objects in array alphabetically.
#print lovely alphabetically sorted array. print as puts generic_array? or prints as puts generic_array.join to make a list with commas? what's the deal with parentheses in conjunction with .join?
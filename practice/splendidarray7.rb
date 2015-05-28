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
generic_array.sort_by{|a| a.downcase}.each do |word| #sort by downcase, print original
  puts " * " + word
end
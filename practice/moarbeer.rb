#while beer > 1 puts "N bottles of beer on the wall, N bottles of beer, tale one down, pass it around N-1 bottles of beer on the wall!"
n = 99
while n > 2
  puts n.to_s + " bottles of beer on the wall, " + n.to_s + " bottles of beer, take one down, pass it around, " + (n-1).to_s + " bottles of beer on the wall!"
 n-=1
end

#puts "1 bottle of beer on the wall, one bottle of beer, take one dowm, pass it around, no more bottles of beer on the wall!"
puts "2 bottles of beer on the wall, 2 bottles of beer, take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer, take one down, pass it around, no more bottles of beer on the wall!"
puts "..."
puts "... ..."
puts "... ... ..."
  puts "... you should probably get your stomach pumped now."
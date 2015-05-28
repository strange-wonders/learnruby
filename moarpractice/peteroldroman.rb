#expandable subtraction method
def arabic_to_roman_old (arabic)
  return "###<not an integer>###" unless arabic.is_a? Integer
  return "###<outside range 1-2999>###" unless (arabic > 0 && arabic <3000)
  roman=''  # string, not a number.

  [
    [1000,'M'],
    [500,'D'],
    [100,'C'],
    [50,'L'],
    [10,'X'],
    [5,'V'],
    [1,'I'],
  ].each do |howmany, letter|
    while (arabic>=howmany)
      roman+=letter
      arabic-=howmany
    end
  end

  return roman
end

=begin
puts arabic_to_roman_old(1)
puts arabic_to_roman_old(2484)
puts arabic_to_roman_old(444)
puts arabic_to_roman_old(2999)
exit
=end

#########################
puts "Enter a number to convert to roman numerals!"
while ((n=gets.to_i) !=0)
  if (n>0 && n < 3000)
    puts arabic_to_roman_old(n)
  else
    puts "Sorry, #{n.to_i} is outside of the range 1-2999. :p"
  end
  puts "Another number?  Just hit enter to quit."
end

#expandable modulo method
##########
# Turn numbers into roman numerals.
#   only up to 3k
#   old-style, so no IV.  Only IIII

def arabic_to_roman_old (arabic)
  return "###<not an integer>###" unless arabic.is_a? Integer
  return "###<outside range 1-2999>###" unless (arabic > 0 && arabic <3000)
  roman=''  # string, not a number.

  [
    [1000,'M'],
    [500,'D'],
    [100,'C'],
    [50,'L'],
    [10,'X'],
    [5,'V'],
    [1,'I'],
  ].each do |value, letter|
    (arabic / value).times do
      roman+=letter
    end
    arabic=arabic%value
  end

  return roman
end

=begin
puts arabic_to_roman_old(1)
puts arabic_to_roman_old(2484)
puts arabic_to_roman_old(444)
puts arabic_to_roman_old(2999)
exit
=end

#########################
puts "Enter a number to convert to roman numerals!"
while ((n=gets.to_i) !=0)
  if (n>0 && n < 3000)
    puts arabic_to_roman_old(n)
  else
    puts "Sorry, #{n.to_i} is outside of the range 1-2999. :p"
  end
  puts "Another number?  Just hit enter to quit."
end

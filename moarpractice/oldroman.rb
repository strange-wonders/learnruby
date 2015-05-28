puts "This is a program to convert arabic numbers into super-old-fashioned Roman numerals."
puts "Give me a whole number between 1 and 3000, and we'll try it out!"

number = gets.chomp.to_i
#conveniently, it looks like any string of letters.to_i = 0, which isn't convertible into roman numerals anyway. one bullet dodged.
badnumber = true

while badnumber
  if (number > 0 and number < 3001 and number.is_a? Integer)
    puts "Great. That number looks perfect for our purposes. Let's go!"
    badnumber = false
  else
    puts "Sorry, I don't think that number will work. Try again? Remember, we need a whole number between 1 and 3000."
    number = gets.chomp.to_i
  end
end

def make_roman (convert_me)
  num_m = convert_me / 1000
    convert_me = convert_me%1000
  num_d = convert_me / 500
    convert_me = convert_me%500
  num_c = convert_me / 100
    convert_me = convert_me%100
  num_l = convert_me / 50
    convert_me = convert_me%50
  num_x = convert_me / 10
    convert_me = convert_me%10
  num_v = convert_me / 5
    convert_me = convert_me%5
  num_i = convert_me
  m = "M" * num_m
  d = "D" * num_d
  c = "C" * num_c
  l = "L" * num_l
  x = "X" * num_x
  v = "V" * num_v
  i = "I" * num_i
  return m + d + c + l + x + v + i
  #return ("M"*num_m) + ("D"*num_d)+...
end

puts "It looks like " + number.to_s + " as a roman numeral is: " + make_roman(number) + "."
  
#aaaaand now we have to convert 312 to CXII. fuck. divison and remainders?
=begin
number/1000 = num_m
num_m.is_a? Integer
if true, puts "M" x num_m
number%1000 = tempnum
tempnum/500 = num_d
num_d.is_a? Integer
if true, puts "D" x tempnum
etc etc
=end

#Alternate loop structure:
# no badnumber here, and don't need to have a gets before hte loop
=begin
while true
  number = gets.chomp.to_i
  if (number > 0 and number < 3001 and number.is_a? Integer)
    puts "Great."
    break
  else
    puts "try again"
  end
end
=end

=begin
def my_method (passed_var)  #just declared a local variable
  #passed_var is a local variable to the method
  puts "You passed me " + passed_var.to_s
  
end

my_method("green")
my_method("blue")

my_method(number)


def double_this_number(original_number)
  doubled_number=original_number*2
  # for debugging:
  #puts("  We're doubling " + original_number.to_s + " and got " + doubled_number.to_s)
  return doubled_number
end

x=3
y=double_this_number(x) #give the program a variable to keep the return in unless you're using it immediately
puts "Now I have " + y.to_s

#  will say:
###(only if we're debugging ;)    We're doubling 3 and got 6
#  Now I Have 6

# using the result immediately:
puts "3 doubled is " + double_this_number(3).to_s

=end
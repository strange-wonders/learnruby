=begin
find out which years in a range (including the start and end year) are leap years
section for gregorian should not accept beginning years earlier than 1582 CE
gregorian leap years are evenly divisible by 4. exception: years divisible by 100, unless they are also divisible by 400
=end

puts "This is a fun little tool to find all of the leap years in a given range of years."
puts "First, we should give it the beginning of the range. Go ahead and type that in!"
year1 = gets.chomp.to_i #1st year in the range
puts "Great! Now, what's the last year you'd like to include?"
year2 = gets.chomp.to_i #last year in the range

countyear = year1

if countyear <8 #no leap years before then, start at 8
  countyear = 8
  puts "There were no leap years before the year 8 in the Julian calendar, so we'll just start there."
  countyear += 1
end

# is year1 <1582? %4 only
while countyear <1582
  if countyear%4 == 0
    puts countyear
  end
  countyear += 1
end

# is year1 >=1582? straight into the full loop with it!
#while loop: begins at countyear, go up by 1 until countyear > year2
while countyear <= year2
  if countyear%4 == 0 #year is evenly divisible by 4
    if countyear%100 != 0 #year is not evenly divisible by 100
      puts countyear
    else #it IS divisible by 100...
      if countyear%400 == 0 #year is a special snowflake
        puts countyear
      end
    end # %100 section
  end # %4 section
  countyear += 1
end #end while loop
      

#should also calculate leap years from beginning of Julian system in 8 CE (every year evenly divisible by 4 is a leap year in the Julian system, without further requirements)
#section to show leap years in a period that begins before 1582 and ends after?
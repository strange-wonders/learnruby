############################################################
# Leap Years
#   input 2 years to get a list of leap years in between.
############################################################
# Gregorian starts at 1582 CE

puts <<END
Leap Years
Input 2 years to get a list of leap years in between (inclusive)
Rules for Leap Years:
  From 0 - 1582 CE, the Julian Calendar had a leap year every 4 years
  From the advent of the Gregorian Calendar, leap years follow a set
  of rules that are slightly more complicated...
  Any year that is divisible by 4 is a leap year.
  Any year that is divisible by 100 is NOT a leap year.
  But any year that is divisible by 400 IS a leap year.
Let's get started:

END

while true
  puts "Enter the starting date (or nothing to quit):"
  year1=gets.chomp
  if year1 == '' or !(year1 =~ /-?[0-9]+/)  # blank or non-number exits
    exit
  end
  puts "Great.  Now give the ending date (or nothing to check just one year):"
  year2=gets.chomp
  if year2 == '' or !(year2 =~ /-?[0-9]+/)  # blank or non-number also exits
    puts "Okay, checking only year " + year1
    year2=year1
  end

  year1=year1.to_i
  year2=year2.to_i

  # A few error cases:
  if year2 < year1
    puts "ERROR: unable to cope with cyclical universe.  Exiting..."
    exit
  end

  if year2 < 8
    puts "  There were no leap years before 8CE..."
    next
  end

  if year1 < 8
    puts "  There were no leap years before 8CE..."
    year1=8
  end

  # Our actual year counting loop:
  for year in year1..year2
    if year<1582 # julian
      if year%4 == 0
        puts "  " + year.to_s
      end
    else # Gregorian
      if year%4 == 0  # divisible by 4 so yes
        if year%100 == 0  # but divisible by 100 so no
          if year%400 ==0   # but divisible by 400, so YES
            puts "  " + year.to_s
          end
        else # not divis by 100
          puts "  " + year.to_s
        end
      end
    end # end if julian
  end # end year counting
end # end asking for years



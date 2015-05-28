#make a table of contents using an array
#format the shit out of it?

#bigarray=[so many baby chapter arrays like ["Slaying Dragons", 14875]]

mainarray = [["Getting Started", 1], ["Numbers", 7], ["Fighting Dragons", 1645], ["Slaying Foul Beastes", 14653]]

linewidth = 70
puts "Table of Contents".center(linewidth)

chapter=1
mainarray.each do |baby|
  string1 = "Chapter " + chapter.to_s + ": " + baby[0]
  string2 = "Page " + baby[1].to_s
  puts(string1.ljust(linewidth / 2) + string2.rjust(linewidth / 2))
  chapter+=1
end



wideness = 51
wideness = (wideness / 2)*2  # makes sure it's even because integers

puts "Table of stuffs".center(wideness)
puts " ".center(wideness)
puts "Chapter 1: Numbery bits".ljust(wideness/ 2) + "Page -2".rjust(wideness/ 2)
puts "Chapter 2: Wordy bits".ljust(wideness/ 2) + "Page 70 million".rjust(wideness/ 2)
puts "Chapter 3: Changy things".ljust(wideness/ 2) + "Page ouroboros".rjust(wideness/ 2)

puts "Hey there. Wanna see a great trick? Tell me your name, and I'll tell you how many characters there are in it."
name = gets.chomp
puts name + ", huh? Well, there are " + name.length.to_s + " characters in your name. But that's not the same as how many letters there are in your name, because it includes spaces. Tell me your name again, one bit at a time, and I'll tell you how many letters are in it. Start with your first name and go from there, ok? And don't forget to hit enter after every section!"
name1 = gets.chomp
puts "Ok, great, Now give me the next part, please."
name2 = gets.chomp
puts "All right. Well, hopefully you only have one more part to your name, because that's all the space I have in my calcu--I mean, in my brain. All right, give me the last part."
name3 = gets.chomp
puts "Ok, let me think really hard here for a second. There are... " + (name1.length+name2.length+name3.length).to_s + " letters in your name. Ha! How's that for a trick?"
puts " "
puts "Whaddya want, you useless good-for-nothing?"
wishlist = gets.chomp
puts "WHAT IS IT WITH THIS '" + wishlist.upcase + "' BULLSHIT? GTFO!"
puts  " "

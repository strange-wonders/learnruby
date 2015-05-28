#DON'T RUN THIS YET

#while talking to grandma
puts "HELLO, SONNY! HOW ARE YOU?"
#loop flag
talking = true
escape = 0  # have we tried saying 'bye' and how many times...

while talking
  #BYE module
  talk = gets.chomp
  handled = false
  
    if handled == false and talk=="BYE"
      escape += 1
      handled = true #granny will not tell you how long it's been since she got high
      if escape >= 3
        talking = false #w00t! you can leave
        puts "*GRUMBLEGRUMBLE* FINE, GO HOME AND PLAY WITH YOUR X-FACTOR OR WHATEVER THEY'RE CALLING THOSE LITTLE BOXES THESE DAYS. LEAVE YOUR POOR GRANNY HERE ALL ALONE."
      else
        puts "NO, I'M NOT HIGH, JUST A LITTLE BUZZED."   # escape not 3 yet
      end
    else 
      escape = 0 #sucks. maybe yell louder next time?
    end

  #default conversation module
  if handled == false 
    if talk == talk.upcase
      puts "NO, NOT SINCE " + (rand(21)+1930).to_s + "!"
    else
      # have to SHOUT to granny
      puts "YOUNG PEOPLE THESE DAYS NEVER ENUNCIATE. SPEAK UP!"
    end
    
  end
  
end

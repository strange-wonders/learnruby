#DON'T RUN THIS EVER

#while talking to grandma
puts "HELLO, SONNY! HOW ARE YOU?"
talk = gets.chomp
#loop flag
talking = true
  
while talking
  #subloop BYE
  if talk == "BYE"
    persistence = 1
    while persistence < 3 
      if talk == "BYE"
        persistence += 1
        puts "YOU YOUNG PEOPLE NEED TO LEARN TO SPEAK CLEARLY."
      else 
        persistence = 0
      end
    end #while persistence < 3 and talk=='BYE'
    if persistence == 3
        puts "HMMPH."
    end
    
  end
  #conversation loop
  if talk == talk.upcase
  puts "NO, NOT SINCE " + (rand(21)+1930).to_s + "!"
  else
      puts "HUH? SPEAK UP, SONNY!"
  end
  talk = gets.chomp
end

puts "NO, I'M NOT HIGH, JUST A LITTLE BUZZED."


#variable to store number of "BYE"s, must wipe itself if you say anything other than "BYE"

=begin
persistence = 0

while persistence < 3
  if talk == "BYE"
    persistence += 1
    puts "YOU YOUNG PEOPLE NEED TO LEARN TO SPEAK CLEARLY."
    
  else
    persistence = 0
  end
end
=end


#if answer == answer.upcase, puts "NO, NOT SINCE (random number between 1930-50)"
  #rand(21) + 1930
#if answer != answer.upcase, puts "HUH?! SPEAK UP, SONNY!"
#if answer.chomp == "BYE", end
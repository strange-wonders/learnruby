=begin
original code, task was to rewrite it without answer variable, using return instead:
def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == "yes" || reply == "no")
      if reply == yes
        answer = true
      else
        answer = false
      end
      break
    else 
      puts "Please answer yes or no."
    end
  end
  answer
end

(and then all the questions etc. cut for length.)
=end

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == "yes")
      return true 
    elsif (reply == "no")
      return false
    else 
      puts "Please answer yes or no."
    end
  end
end

puts "This is a brief survery about food preferences, and definitely not about bed-wetting at all. "
puts "Thank you for participating. Please answer yes or no to each of the following questions."
puts

ask "Do you like tacos?"
ask "Do you like burritos?"
ask "Do you like sushi?"
ask "Do you like Thai food?"
wetsbed = ask "Do you wet the bed?"
ask "Do you enjoy lutefisk?"
puts "Almost done, now."
ask "Do you like horchata?"
ask "Do you like sopapillas?"

puts
puts "DEBRIEFING"
puts "Thank you for participating in our survey. We may have told one tiny little fib--this survey was actually about bedwetting."
puts "All of those questions about food were just to set you at your ease. Thanks again for your important contribution."

puts wetsbed
trombones = 76
coronets = "110"

puts trombones.to_s + coronets
puts trombones + coronets.to_i
puts trombones + coronets.to_f
puts " "
puts "Echo?"
puts gets
puts " "
puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name + "? Weird, that's my name, too!"
puts " "
puts "Hi! We just need to ask a few questions before we can let you into our super-secret club. First of all, what's your first name?"
name1 = gets.chomp
puts "So your first name is " + name1 + "? Interesting... . And what's your middle name?"
name2 = gets.chomp
puts name2 + ". I see. And finally, your last name, please."
name3 = gets.chomp
puts "So your full name is " + name1 + " " + name2 + " " + name3 + "? I'm afraid we'll need to ask you a few more questions. Please don't resist the guards. This hurts me more than it hurts you, I promise."
puts " "
puts "What's your favorite number?"
numero = gets.chomp
numero2 = (numero.to_i + 1).to_s
puts numero + " is kind of a lame number. Why not " + numero2 + "? It's a much better number. All the cool kids like " + numero2 + "."
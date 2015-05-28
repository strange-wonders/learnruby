def Nbottle_s num_bots
  if num_bots != 1
    return num_bots.to_s + " bottles"  # e.g., "100 bottles"
  end
  return "1 bottle"
end

num_bottles=100
while num_bottles > 0
  puts Nbottle_s(num_bottles) + " of beer on the wall!  " + Nbottle_s(num_bottles) +" of beer!"
  num_bottles-=1
  puts "Take one down, pass it around..." + Nbottle_s(num_bottles) + " of beer on the wall!"
  puts
end




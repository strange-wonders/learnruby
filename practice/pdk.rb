def englishNumber number
  englishWords=''
  if number == 0
    return 'zero'
  end
  if number < 0
    return 'negative ' + englishNumber(-1*number)
  end
  if number < 10
    return ['one','two','three','four','five','six','seven','eight','nine'][number-1]
  end
  if number < 20
    return ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'][number-10]
  end
  if number < 100
    left=number / 10  # tens place
    right=number-left*10
    englishWords+=['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'][left-2]
    if right
      englishWords=englishWords + '-' + englishNumber(right)
    end
    return englishWords
  end
  # special case
  return "eleventy one" if number == 111
  if number < 1000
    left=number / 100 # hundreds place
    right = number-left*100

    englishWords=englishNumber(left) + " hundred"
    if right
      englishWords = englishWords + " " + englishNumber(right)
    end
    return englishWords
  end
  if number < 1000**12 # 999decillion or less
    # we only go so high
    higherNumbers=['thousand','million','billion','trillion','quadrillion','quintillion','sextillion','septillion','octillion','nonillion','decillion']   # stupid names, given billion is 1000x3rd, but whatever.
    # We've started at 1000, and we count how many thousands there are, up to 11.
    higherCount=1
    while (number/(1000**(higherCount+1))>0) #check if there are millions+
      higherCount+=1
    end

    left=number/(1000**(higherCount))
    right=number-left*(1000**higherCount)
    englishWords=englishNumber(left) + " " + higherNumbers[higherCount-1]
    if right
      englishWords=englishWords + " " + englishNumber(right)
    end
    return englishWords
  end

  

  return "a LOT"
end

puts "Enter a number and I'll say it in english! (hit enter to quit)"
while ((n=gets.chomp) != "")
  puts englishNumber(n.to_i)
end

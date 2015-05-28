


array=[13,552,123,422,65,346,767,2,558]

#switch 1st two elements
temp=array[0]        # temp is now 13
array[0]=array[1]    # 1st element of array is now 552, so array looks like [552,552,...]
array[1]=temp        # 2nd element of array is now temp, which is 13.  So array is [552,13,...]
puts "Starting with array:" + array.to_s

def change_two_elements(a,b)
  temp=self.array[a]    
  self.array[a]=self.array[b]
  self.array[b]=temp
  puts "Switching elements #{a} and #{b}.  Array is now:" + array.to_S
end    

sorting=true
while(sorting)
  # Start bubble sort:
  # find 1st two elements that are out of order:
#  puts "Starting from beginning: " + array.to_s
  i=0
  looking_for_out_of_order=true
  while(looking_for_out_of_order)
    if array[i+1]  # want to make sure we haven't hit the end of the array
      if array[i] > array[i+1] # oh noes!  out of order!
        #change_two_elements(i,i+1)
        #puts "elements #{i} and #{i+1} :" + array[i].to_s + " and " + array[i+1].to_s
        temp=array[i]    
        array[i]=array[i+1]
        array[i+1]=temp
        puts "Switching elements #{i} and #{i+1}.  Array is now:" + array.to_s
        looking_for_out_of_order=false
      end
    else #hit end of array
      looking_for_out_of_order=false
      sorting=false # nothing out of order!
    end # if array[i+1]
    i=i+1
  end
end

puts "Finished!  The array is now " + array.to_s

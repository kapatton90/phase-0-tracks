def encrypt (str)
  index = 0 
  
  
while index < str.length
   #do something here
   str[index] = str[index].next!
   index += 1
    
  end
  str
end

puts encrypt("secret message")
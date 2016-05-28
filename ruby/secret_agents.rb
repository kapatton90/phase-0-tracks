def encrypt (message)
  index = 0 
  
  
	while index < message.length 
	#figure out the length of the message
  	message[index] = message[index].next! 
  	#figure out the index of the message and then change it to the next index placement
   	index += 1
   	#counter to ensure no infinite loops   
  	end
  	message
end

puts encrypt("secret message")



def decrypt(message)

placement = "abcdefghijklmnopqrstuvwxyz".index("message")

placement = placement - 1
puts placement

end



def decrypt(message) 
	index = 0

	while index < message.length
		p message[index]
		index += 1
	end
  	
	def decrypt_2(message)
		placement = "abcdefghijklmnopqrstuvwxyz".index("message")
		placement + 1
	
	
	end	
end
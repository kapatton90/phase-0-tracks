#create encryption method
#find the index of letters in the message


def encrypt(message)
  index = 0 
  
    
	while index < message.length 
	#figure out the length of the message
			
		  #in case of z in message
		  if message[index] == "z"
		  	 message[index] = "a"
			
		#keeping the spaces
		elsif message[index] == " "	
		 	  message[index] = " "
		 else	
  			message[index] = message[index].next! 
  		#find index of each letter and increase by one
   		
   		
   		#counter to ensure no infinite loops   
  		end
  	index += 1	
  	end	
  	return message
end


#find the index of each letter of the encrypted message to prepare for decryption 
def placement(message_letters)
	
	#alphabet string to check against letters of message
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	a = alphabet.index(message_letters)
	
	#decrease the index of message letter by one
	decrease_a = a - 1

	#new index placement of message letter
	alphabet[decrease_a]

end


#create decryption method
def decrypt(message)
	index = 0

	while index < message.length
		
		#keeping the spaces
		if message[index] == " "	
		 	  message[index] = " "
		else 	  
			#calling on my placement method to go back an index on each letter	
		message[index] = placement(message[index])
		end
		
		index += 1
	end	

	return message
end	


#encrypt("zed zed")
#trying out encrpt method
#decrypt("afe afe")
#trying out decrpyt method
#(decrypt(encrypt)"swordfish"))

#obtain agent's name
print "Enter the first letter of your secret agent name."
agent_name = gets.chomp

#ask the secret agent if they would like to encrypt or decrypt their password
print "Hello Agent #{agent_name}, would you like to encrypt or decrypt your password?(encrypt/decrypt)"
answer = gets.chomp

#ask for password
print "What is your password?"
password = gets.chomp

if answer = "encrypt"
	encrypt("#{password}")
elsif answer = "decrypt"
	decrypt("#{password}")
else
	puts "This message will now self-destruct."
end	
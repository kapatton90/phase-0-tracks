def reverse_agent_name 

#swap the first and last names

	agent_name.split(" ").reverse!
end	
#ask for the agent's name
puts "Name please:"
agent_name = gets.chomp

p reverse_agent_name

#split the agent's name into letters 
letters = reverse_agent_name{|name| name != name.chars}
p letters
#method for finding the next letter 
def next_letter
#array for vowels
vowels = "aeiou".chars
#array for consonants
	if [letters] == vowels
		puts vowels.next
	else
		puts letters.next
	end
end

p next_letter

# consonants = "bcdfghjklmnpqrstvwxyz".chars
# #method for next vowel
# def next_vowel 
# 	if letters == vowels 
# 	puts vowels.next
# end	
# agent_name[/(?<vowel>[aeiou](?<non-vowel>[^aeiou])/, "vowel"]

#check letters of agent's name for vowels and consonants
# if letters == vowels
# 	puts next_vowel
# else
# 	puts letters.map!{
# 	|letter| letter.next
# 	}
# end		
# if letters.include? vowels
# 	puts next_vowel
# elsif letters.include?(consonants)
# 	puts next_consonant
# else
# 	puts "error"
# end


			
	

# next_vowel = vowels.split
# 	vowels.next
	

# if agent_name.include?(vowels)
# 	put next_vowel
# end




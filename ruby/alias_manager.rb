#ask for the agent's name
puts "Name please:"
agent_name = gets.chomp
#swap the first and last names
agent_name.split(" ").reverse!
#split the agent's name into letters 
letters = agent_name.chars
#array for vowels
vowels = "aeiou".chars
#array for consonants
consonants = "bcdfghjklmnpqrstvwxyz".chars
#method for next vowel
def next_vowel 
	if letters == vowels 
	puts vowels.next
end	

#check letters of agent's name for vowels and consonants
# if letters == vowels
# 	puts next_vowel
# else
# 	puts letters.map!{
# 	|letter| letter.next
# 	}
# end		
if letters.include? vowels
	puts next_vowel
elsif letters.include?(consonants)
	puts next_consonant
else
	puts "error"
end


			
	

# next_vowel = vowels.split
# 	vowels.next
	

# if agent_name.include?(vowels)
# 	put next_vowel
# end




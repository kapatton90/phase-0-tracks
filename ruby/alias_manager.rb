#ask for the agent's name
puts "Name please:"
def agent_name
 	agent_name = gets.chomp
end
p agent_name
def next_vowel
#swap the first and last names
reverse_agent_name = agent_name.split(" ").reverse!
p reverse_agent_name
#split the agent's name into letters 
letters = reverse_agent_name.map!{|name| name = name.chars}
p letters
# 	#array for vowels
 	vowels = "aeiou".chars
# 	#array for consonants
# 	next_consonant = "bcdfghjklmnpqrstvwxyz".chars
 	if letters.include?(vowels)
 		vowels.map!{|vowel|vowel = vowel.shift(1)}
 	else
	 	letters.each{|letter| letter = letter.shift(2)}	
 	end

end
p next_vowel

	






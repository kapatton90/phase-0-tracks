#ask for the agent's name
puts "Name please:"
agent_name = gets.chomp
#swap the first and last names
p agent_name.split(" ").reverse!
#split the agent's name into letters 
p letters = agent_name.chars
#array for vowels
p vowels = ["a", "e", "i", "o", "u"]
#array for consonants
p consonants = "bcdfghjklmnpqrstvwxyz".chars

# next_vowel = vowels.split
# 	vowels.next
	

# if agent_name.include?(vowels)
# 	put next_vowel
# end




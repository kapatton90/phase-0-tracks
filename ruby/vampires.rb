puts "What is your name?"
name = gets.chomp

puts" How old are you?
age = gets.chomp

puts "What year were you born?"
year_born = gets.chomp

current_year = 2016

if year_born == current_year - age || year_born == current_year - (age +1)
	real_age = true
else
	real_age = false
end		


puts "Our company cafeteria serves garlic bread. Should we order you some?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

if age == true && garlic_bread == true
	puts "Probably not a vampire."
elsif age == false && garlic_bread == false	
	puts "Probably a vampire."
elsif age == false && garlic_bread == false && insurance == false
	puts "Almost certainly a vampire."
elsif name == Drake Cula || name == Tu Fang
	puts "Definitely a vampire."		
else
	puts "Results inconclusive."	
end	
print "How many employees will you be processing today?"
employees = gets.chomp.to_i

#Run program until all employees have been processed.


print "What is your name?"
name = gets.chomp

if name == "Drake Cula" || name == "Tu Fang"
	print "Definitely a Vampire."
else
	print "Results inconclusive."
end		

print "How old are you?"
age = gets.chomp.to_i

print "What year were you born?"
year_born = gets.chomp.to_i

current_year = 2016

def real_age

#Check to see if their age and year born make sense.
	if year_born == current_year - age || year_born == current_year - (age +1)
		real_age = true
	else
		real_age = false
	end	
	return real_age	
end

print "Our company cafeteria serves garlic bread. Should we order you some?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

puts "Do you have any allergies?"
allergies = gets.chomp

#Loop for multiple allergies
#Until allergies = "done"



wolves_like_sunshine == true
wolves_like_garlic == true
vampires_like_sunshine == false
vampires_like_garlic == false

if real_age == true && garlic_bread == true
	print "Probably not a vampire."
elsif real_age == false && garlic_bread == false	
	print"Probably a vampire."
elsif real_age == false && garlic_bread == false && insurance == false
	print "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
	print "Definitely a vampire."		
else
	print "Results inconclusive."	
end	

#Right before program exits
#print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
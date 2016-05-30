puts "How many employees will you be processing today?"
#Run program until all employees have been processed.
times = -1
loop do
	employees = gets.chomp.to_i
	times == employees
	puts "What is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	
	current_year = 2016
	
	def real_age(year_born, current_year, age)
	
	#Check to see if their age and year born make sense.
		if year_born == current_year - age || year_born == current_year - (age +1)
			real_age = true
		else
			real_age = false
		end	
		return real_age	
	end
	
	puts "Our company cafeteria serves garlic bread. Should we order you some?(Yes/No)"
	garlic_bread = gets.chomp
	
	if garlic_bread == "Yes"
		true
	else
		false
	end	
	
	puts "Would you like to enroll in the company's health insurance?(Yes/No)"
	health_insurance = gets.chomp
	
	if health_insurance == "Yes"
		true
	else
		false
	end	
	
	puts "Do you have any allergies(type done when finished with this section)?"
	#Loop for multiple allergies
	while 1==1
		allergies = gets.chomp
		case allergies
		when "sunshine"
			puts "Probably a Vampire."
			break
		when "done"
			break
		else 
			puts "Do you have any other allegeries?"
		end
	end
	
	
		
	
	
	$wolves_like_sunshine == true
	$wolves_like_garlic == true
	$vampires_like_sunshine == false
	$vampires_like_garlic == false
	
	if real_age(year_born, current_year, age) == true && garlic_bread == true
		puts "Probably not a vampire."
	elsif real_age(year_born, current_year, age) == false && garlic_bread == false	
		puts"Probably a vampire."
	elsif real_age(year_born, current_year, age) == false && garlic_bread == false && insurance == false
		puts "Almost certainly a vampire."
	elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."		
	else
		puts "Results inconclusive."	
	end	
end
	
#Right before program exits
print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

		puts "Initializing Santa instance ..."
	end	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays"
	end
	
	#Create a method for eating milk and cookies
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	#Create a method to assign gender
	def gender=(new_gender)
		@gender = new_gender
	end	

	#Create a method to place the reindeer Santa is mad at, at the back of the line
	def get_mad_at(reindeer)
	end

	#Creat a method to celebrate a birthday and change the age to a year older
	def celebrate_birthday
		@celebrate_birthday = @age += 1
	end	
end	
	
kris = Santa.new("male", "Germanic")
p kris.celebrate_birthday
p kris.celebrate_birthday
kris.gender = "female"
p Santa
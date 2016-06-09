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
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end



	# def celebrate_birthday=(new_age)
	# 	new_age = @age += 1
	# end	

	def get_mad_at(reindeer)
	end

	def celebrate_birthday
		@celebrate_birthday = @age += 1
	end	
end	
	
kris = Santa.new("male", "Germanic")
p kris.celebrate_birthday
santas = []
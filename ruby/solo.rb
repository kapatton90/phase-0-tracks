#Create a Zombie clas
class Zombie
	#Create an array for new zombies
		attr_accessor zombies = []
	#Create an initialize method
	def initialize
		#Attributes of the Zombie class
		@name = name
		#Boolean for life status
		@life_status = undead
			dead == false && alive == false
		#String for physical condition
		@physical_condition = decomposing
		#Integer for hungry meter
		@hunger_range = [0..10]
	end
	
	#use setter method to let user choose a name for their zombie	
	def name=(new_name)
		@name = new_name
	end	

	#Create a method to moan
	def moan

	end
	
	#Create a method to eat brains
	def eat_brains
		#IF statement to decide whether or not to eat brains
	end

	#Create a method for the Zombie walk
	def shuffle
	end

	#Create a method for the Thriller
	def dance
		thriller
	end

end
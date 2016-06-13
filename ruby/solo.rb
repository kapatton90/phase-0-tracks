#Create a Zombie clas
class Zombie
	#Create an array for new zombies
	#make name readable and writable
	attr_accessor :name, :hunger_range
	#Create an initialize method
	def initialize(name, hunger_range)
		#Attributes of the Zombie class
		@name = name
		#Boolean for life status
		@life_status = "undead"
			"dead" == false && "alive" == false
		#String for physical condition
		@physical_condition = "decomposing"
		#Integer for hungry meter
		@hunger_range = [0..10]
	end
	
	#Create a method to moan
	def moan

	end
	
	#Create a method to eat brains
	def eat_brains
		#Case statement to decide whether or not to eat brains
		case @hunger_range
			when very hungery
				@hunger_range = 10 || 9 || 8 || 7
			when hungry 
				@hunger_range = 6 || 5 || 4
			when kinda hungry
				@hunger_range = 3 || 2 || 1
			else
				puts "Not hungry, but will eat brains anyway."			
	end

	#Create a method for the Zombie walk
	def shuffle
	end

	#Create a method for the Thriller
	def dance
		thriller
	end

end
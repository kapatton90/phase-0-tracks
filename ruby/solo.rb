#Create a Zombie clas
class Zombie
	#Create an array for new zombies
	#make name readable and writable
	attr_accessor :name, :hunger_level
	#Create an initialize method
	def initialize(name, hunger_range)
		#Attributes of the Zombie class
		@name = name
		#Boolean for life status
		@life_status = "undead"
			"dead" == false && "alive" == false
		#String for physical condition
		@physical_condition = "decomposing"
		#Integer indicating how hungry the zombie is
		@hunger_level = (0)
	end
	
	#Create a method to moan
	def moan(x)
		x.times{puts "Graagh brains!"}
	end
	
	#Create a method to eat brains
	def eat_brains
		#Case statement to decide whether or not to eat brains
		case @hunger_level
			when :very_hungry
				@hunger_level = 10 || 9 || 8 || 7
				puts "Raa uURRrRR, need brains!!!"
			when :hungry 
				@hunger_level = 6 || 5 || 4
				puts "Hungry, Ggrr RaaA UrR!"
			when :kinda_hungry
				@hunger_level = 3 || 2 || 1
				puts ""
			else
				puts "Not hungry, but will eat brains anyway."			
		end
	end

	#Create a method for the Zombie walk
	def shuffle
		puts "*shuffles around aimlessly*"
	end

	#Create a method for the Thriller
	def dance
		if dance == "Michael Jackson"
			puts "*Does Thriller Dance*"	
		end
	end

end

#Get name from user to create their zombie name
puts "What is your name?"
@name = gets.chomp

#Ask how hungry they are to see how much they will want to eat brains
puts "How hungry are you on a scale of one to ten?(Ten being the most hungry)"
@hunger_level = gets.chomp

Zombie.new(@name, @hunger_level)

puts "Your zombie name is Raa uRrr #{@name} and you are #{@hunger_level}."


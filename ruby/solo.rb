#Create a Zombie clas
class Zombie

	@@zombies_array = Array.new 
	#Make name readable and writable
	attr_accessor :name, :hunger_level

	def self.all_instances
		@@zombies_array
	end	
	
	#Create an initialize method
	def initialize(name)
		puts "#{name} has been recently bitten and is turning into a zombie!!!"
		#Attributes of the class
		#Boolean for life status
		@name = name
		@life_status = "undead"
			"dead" == false && "alive" == false
		#String for physical condition
		@physical_condition = "decomposing"
		@hunger_level = hunger_level
		@@zombies_array << self
	end
	
	#Create a method to moan
	def moan(x)
		x.times{puts "Graagh brains!"}
	end
	
	#Create a method to eat brains
	def self.eat_brains
		#Ask how hungry they are to see how much they will want to eat brains
		puts "How hungry are you on a scale of one to ten?(Ten being the most hungry)"
		@hunger_level = gets.chomp.to_i

		#Case statement to decide whether or not to eat brains
		case @hunger_level
			
			when (7..10)
				puts "Raa uURRrRR, need brains!!!"
			when (4..6)
				puts "Hungry, Ggrr RaaA UrR!"
			when (1..3)
				puts "Ggrr ArR grr."
			else
				puts "Not hungry, but will eat brains anyway."			
		end
	end

	#Create a method for the Zombie walk
	def shuffle
		puts "*shuffles around aimlessly*"
	end

	#Create a method for the Thriller
	def self.dance
			puts "*#{name} Does Thriller Dance*"	
	end

end

#Hash for created zombies
zombies_array = []


#Begin zombie experience
puts "The zombie virus has spread to your town and you being to worry about becoming infected. You decide to head to Costco for supplies so you can baricade yourself in your home if you need to. You step out the front door and..."
#Get name from user to create their zombie name
puts "What is your name?"
name = gets.chomp

#Create a new instance of Zombie class with name
Zombie.new(name)

#Use eat brains method for second part of user input
puts Zombie.eat_brains

#Activate dance method based on user input
puts "Do you feel like dancing?(yes/no)"
dance = gets.chomp
	if dance == "yes"
		Zombie.dance
	else
		puts "ArRrr, too hungry for dancing, grRrr!!!"
	end		

p Zombie.all_instances
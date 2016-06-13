#Create a Zombie clas
class Zombie
	#Array to store Zombie class instances
	@@zombies_array = Array.new 
	#Make name readable and writable
	attr_reader :hunger_level
	attr_accessor :name

	#Method to keep all instance of Zombie class in array
	def self.all_instances
		@@zombies_array
	end	
	
	#Create an initialize method
	def initialize(name)
		puts "#{name} has been recently bitten and is turning into a zombie!!!"
		#Attributes of the class
		@name = name
		@life_status = "undead"
		@physical_condition = "decomposing"
		@hunger_level = hunger_level
		#Array for all instances to be put in zombies_array
		@@zombies_array << self
	end
	
	#Create a method to eat brains
	def self.eat_brains
		#Ask how hungry they are to see how much they will want to eat brains
		puts "How hungry are you on a scale of one to ten?(Ten being the most hungry)"
		hunger_level = gets.chomp.to_i
		@hunger_level = hunger_level
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
	
	#Create a method for the Thriller
	def self.dance
			puts "*#{name} Does Thriller Dance*"	
	end

	#Create a method for the Zombie walk
	def self.shuffle
		puts "*shuffles around aimlessly*"
	end

	#Create a method to moan
	def self.moan(x)
		x.times{puts "GrrRrr aagh brains!"}
	end
end

#Begin zombie experience
#Get name from user to create their zombie name
puts "What is your name?"
name = gets.chomp

puts "The zombie virus has spread to your town and you being to worry about becoming infected. You decide to head to Costco for supplies so you can baricade yourself in your home if you need to. You step out the front door and..."

#Create a new instance of Zombie class with name
Zombie.new(name)

#Eat brains method for hunger level
p Zombie.eat_brains

#Activate dance method based on user input
puts "Do you feel like dancing?(yes/no)"
dance = gets.chomp
	if dance == "yes"
		Zombie.dance
	else
		puts "ArRrr, too hungry for dancing, grRrr!!!"
	end		

puts "Now that you are a zombie, there isn't much to do, other than eat brains of course. Would you like to shuffle or moan?"
	decision = gets.chomp
	if decision == "shuffle"
		puts Zombie.shuffle
	elsif decision == "moan"
		puts "How many times would you like to moan?"
		moan_times = gets.chomp.to_i
		puts Zombie.moan(moan_times)
	else
		puts "No time for nonsense! Need more brains!!!! grRrr"
	end				

p Zombie.all_instances
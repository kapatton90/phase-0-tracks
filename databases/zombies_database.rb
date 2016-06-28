#require gem for sqlite3
require 'sqlite3'

db = SQLite3::Database.new("zombies.db")
db.execute("SELECT * FROM zombies") 


#create a zombie table
create_table_zombie = <<-SQL
	CREATE TABLE IF NOT EXISTS zombies(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	decay_level INT,
	hunger_level INT
	)
	SQL

db.execute(create_table_zombie)

#create a zombie hunter table
create_table_zombie_hunter = <<-SQL
	CREATE TABLE IF NOT EXISTS zombie_hunters(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	weapons	VARCHAR(255),
	skill_level INT
	)	
	SQL

#create a survival chance table that matches up zombie hunters
#and zombies and tells you the odds of survival 
create_table_survival_chances = <<-SQL
	CREATE TABLE IF NOT EXISTS survival_chances(
	id INTEGER PRIMARY KEY,
	zombie_hunters_id INT,
	zombies_id INT,
	survival_chances INT
	FOREIGN KEY	(zombie_hunters_id) REFERENCES zombie_hunters(id),
	FOREIGN KEY (zombies_id) REFERENCES zombies(id)
	)	
	SQL


#Method for creating a new zombie
def add_infected (db, name, decay_level, hunger_level)
	db.execute("INSERT INTO zombies (name, decay_level, hunger_level) VALUES (?, ?, ?)",
		[new_name, new_decay_level, new_hunger_level])
end
#Method for creating a new zombie hunter
def add_zombie_hunter (db, name, weapons, skill_level)
	db.execute("INSERT INTO zombie_hunters (name, weapons, skill_level) VALUES (?, ?, ?)",
		[new_hunter_name, new_weapon, new_skill_level])
end		 
#Method to display the zombie hunter, matched with a zombie
#by their ids in the skill level table
def display (db)
	display = db.execute(<<-SQL
		SELECT zombies.name, zombies.decay_level, 
		zombies.hunger_level, zombie_hunters.name, 
		zombie_hunters.weapons, zombie_hunters.skill_level, 
		survival_chances.survival_chances
		FROM survival_chances
		JOIN zombie_hunters 
		ON survival_chances.zombie_hunters_id = zombie_hunters.id
		JOIN zombies
		ON survival_chances.zombies_id = zombies.id)
		SQL)

#USER INTERFACE
puts "Welcome to the zombie survival simulator. This is a simulation,
 where you can test a situation to see what the probable outcome would 
 be for survival. Would you like to try it out? Type 'yes', or 'no'"

 gameplay = ""

#WHILE loop to stop if the answer to would for would you
#like to play is no
 while gameplay != "no"
 	gameplay = gets.chomp.downcase
 	break if gameplay == "no"
end 

#Get new hunter attributes
puts "What is the name of the zombie hunter?"
new_hunter_name = gets.chomp.upcase

puts "What weapon would you like to give them?(gun, sword, ax, bow)"
new_weapon = gets.chomp

puts "What is their skill_level?(scale of 1 to 10)"
new_skill_level = gets.chomp

puts "Your new zombie hunter's name is #{new_hunter_name}, 
their weapon is #{new_weapon} and they have a skill level of #{new_skill_level}."

#Get new zombie attributes
#IF statement to decide the survival chances of the 
#zombie hunter if faced with a particular zombie
#based on skill_level vs hunger_level

#Points that can be added to the zombie hunter's 
#skill level depending on the weapon they choose




#Kimberly Patton & Jessica Bohn


def block_method
	name1 = "Jessica"
	name2 = "Kimberly"
	puts "Hi, there."
	yield(name1, name2) 
end		

#p block_method("Jessica", "Kimberly")

p block_method {|name1, name2| puts "Hi there #{name1} and #{name2}!"}
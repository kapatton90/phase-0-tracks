#initialize interior_designer hash
interior_designer = {
	:name => " ",
	:age =>" ",
	:children =>" ",
	:decor_theme => " " 

}
#section for name
puts "Name:"
name = gets.chomp
#convert to symbol and store in hash
interior_designer[:name] = name.to_sym

puts "Age:"
age = gets.chomp
#convert to symbol and store in hash
interior_designer[:age] = age.to_sym

puts "How many children do you have?"
children = gets.chomp.to_sym
#convert to symbol and store in hash
interior_designer[:children] = children.to_sym

puts "What is the theme of the decor?"
decor = gets.chomp.to_sym
#convert to symbol and store in hash
interior_designer[:decor_theme] = decor.to_sym

p interior_designer

puts "Do you need to make any changes to your answers?(yes/none)"
changes = gets.chomp

#create if statement to input changes if user need to
if changes == "yes"
	puts "What section would you like to make changes to? name; age; children; or decor?"
	section = gets.chomp.to_sym
	puts "What would you like to change it to?"
	answer_change = gets.chomp
	#convert to symbol and store in hash
	interior_designer[section] = answer_change.to_sym	
end	

print interior_designer
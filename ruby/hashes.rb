#initialize interior_designer hash
interior_designer = {
	:name => " ",
	:age =>" ",
	:children =>" ",
	:decor_theme => " " 

}
puts "What is the client's name?"
name = gets.chomp
interior_designer[:name] = name.to_sym

puts "what is the client's age?"
age = gets.chomp
interior_designer[:age] = age.to_sym

puts "How many children do they have?"
children = gets.chomp.to_sym
interior_designer[:children] = children.to_sym

puts "What is the theme of the decor?"
decor = gets.chomp.to_sym
interior_designer[:decor_theme] = decor.to_sym

p interior_designer

puts "Do you need to make any changes to your answers?(yes/none)"
changes = gets.chomp

if changes == "yes"
	puts "What section do you need to make changes to? name; age; children; or decor?"
	section = gets.chomp.to_sym
	puts "What would you like to change it to?"
	answer_change = gets.chomp
	interior_designer[section] = answer_change.to_sym	
end	

print interior_designer
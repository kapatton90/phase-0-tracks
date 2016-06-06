#define calculator method
def calculate(x, operator, y )
	#use .send to esablish hierarchy
	 x.send(operator, y)
end	
#test method a few times using different operators
p calculate(13, '+', 7)
p calculate(3,'-', 2)
p calculate(4, '*', 2)
p calculate(6, '/', 3)

#ask user for input
puts "What calculation would you like to perform?(Type done when finished)"
calculation = gets.chomp.split
#convert user input to the correct format for calculate method
p calculate(calculation[0].to_i, calculation[1], calculation[2].to_i )

#until loop for as many calculations as user wants, until done is typed
begin 	
	puts "What calculation would you like to perform?(Type done when finished)"
	calculation = gets.chomp.split
	#convert user input to the correct format for calculate method
	p calculate(calculation[0].to_i, calculation[1], calculation[2].to_i )
end	until calculation == "done"	
#store calculator history
calculator_history = {
	calculation => calculate
}
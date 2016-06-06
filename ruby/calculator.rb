def calculate(x, operator, y )
	 x.send(operator, y)
end	

p calculate(13, '+', 7)
p calculate(3,'-', 2)
p calculate(4, '*', 2)
p calculate(6, '/', 3)

# puts "What calculation would you like to perform?"
# 	calculation = gets.chomp
# 	calculate(calculation)

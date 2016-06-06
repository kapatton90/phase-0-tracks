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

puts "What calculation would you like to perform?"
	calculation = gets.chomp.split
p calculate(calculation[0].to_i, calculation[1], calculation[2].to_i )
	# def integers(x, y)
	# 	x.to_i
	# 	y.to_i
	# end	
	# p integers(calculation[0].to_i, calculation(1).to_i)
	

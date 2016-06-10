# module Shout
	
# 	#Add a method for yelling angrily!!!
# 	def self.yell_angrily(words)
# 		words + "!!!"  + " :("
# 	end

# 	#Add a method for yelling happily!!!
# 	def self.yell_happily(words)
# 		words + "!!!!!" + ":)"
# 	end

# end

#REMEMBER TO FINISH RELEASE 0


class Adults
	include Shout
end

class Children
	include Shout
end

parent = Adult.new
parent.yell_angrily("Clean your room")

child = Children.new
child.yell_happily("Icecream")


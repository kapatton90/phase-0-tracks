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

# Shout.singleton_methods
# Shout.yell_angrily("Ahhhh")
# Shout.yell_happily("Yayyyy")

module Shout
	
	#Add a method for yelling angrily!!!
	def yell_angrily(words)
		words + "!!!"  + " :("
	end

	#Add a method for yelling happily!!!
	def yell_happily(words)
		words + "!!!!!" + ":)"
	end

end

class Adults
	def initialize
	end 
		
	include Shout
end

class Children
	def initialize
	end
		
	include Shout
end

parent = Adults.new
p parent.yell_angrily("Clean your room")

child = Children.new
p child.yell_happily("Icecream")


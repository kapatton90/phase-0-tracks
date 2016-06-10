module Shout
	
	#Add a method for yelling angrily!!!
	def self.yell_angrily(words)
		words + "!!!"  + " :("
	end

	#Add a method for yelling happily!!!
	def self.yell_happily(words)
		words + "!!!!!" + ":)"
	end

end

Shout.yell_angrily("Arghh")

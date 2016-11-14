module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(name)
		"Hey #{name} we did it!!" 
	end
end

class Fan
	include Shout
end

class Cop
	include Shout
end

fan = Fan.new
fan.yell_angrily("Shoot the puck")

cop = Cop.new
cop.yell_angrily("Stop")

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(name)
#   	"Hey #{name} we did it!!" 
#   end
# end

# # Driver Code
# Shout.yell_angrily("Hey")
# Shout.yelling_happily("Dan")
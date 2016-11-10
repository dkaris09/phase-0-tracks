class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(num)
		num.times {puts "Woof!"}
	end 

	def roll_over
		puts "Roll Over!"
	end

	def dog_years(human_years)
		puts human_years.to_i * 7
	end 

	def play_dead(name)
		puts "Play dead, #{name}!"
	end
end

# puppy = Puppy.new
# puppy.fetch("ball")
# puppy.speak(5)
# puppy.roll_over
# puppy.play_dead("Spike")

class GreekGods
	def initialize
	end

	def name(name)
		puts "Your name is #{name}.."
	end

	def powers(power)
		puts "Your special power is #{power}."
	end
end

	zeus = GreekGods.new
	# Use a loop to make 50 instances of your class.
	index = 0 

	while index < 49 
		zeus = GreekGods.new 
		index += 1 
	end 

# Modify your loop so that it stores all of the instances
# in a data structure.
arr = []
(0..49).each do 
	arr << zeus = GreekGods.new
end
arr 
# Iterate over that data structure using .each and
# call the instance methods you wrote on each instance. 

arr.each do |instance| 
	instance.powers("super-strength")
	instance.name("Hermes")
end

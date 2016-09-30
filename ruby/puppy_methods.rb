# Release 0: Add Behavior to a Class
class Puppy
# Release 1: Declare an Initialize Method 
  def initialize
  	puts "Initializing"
  end 

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  	puts "Woof! " * i
  end

  def roll_over
  	puts "Roll Over!"
  end

  def dog_years(i)
  	i * 7
  end

  def dog_flip(i)
  	puts "Catahoula flipped #{i} times!"
  end
end

class Dog
	def initialize 
	end

	def tricks(i)
		puts "My dog can perform #{i} tricks."
	end

	def name(name)
		puts "My dogs name is #{name}"
	end

end

# Driver Code
catahoula = Puppy.new 
catahoula.fetch("catahoula")
catahoula.speak(3)
catahoula.roll_over
 p catahoula.dog_years(3)
catahoula.dog_flip(2)

# Release 2: Write Your Own Class, and Experiment!
i = 0
arr =[]
while i < 50 
	arr << catalouha = Dog.new
 	i += 1 
end
p arr

arr.each do 
|instance| instance.name("Tom")
end

arr.each do |instance|
	instance.tricks(3)
end
	
# Release 0: Bring Santa to Life

class Santa
# Release 3: Refactor with attr_reader and attr_accessor
	attr_reader :ethnicity # for getters
	attr_accessor :age, :reindeer_ranking, :gender # for setters	

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance.."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer","Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, Ho, Ho! Happy Holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!!!"
	end
	
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking = reindeer_arr
		reindeer_arr.insert(8, reindeer_arr.delete_at(0))
	end
end

	#Outside class

# Release 1: Give Santa Attributes for Christmas
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i],example_ethnicities[i])
end

p santas
nicolaus = Santa.new("male", "white")

# Driver Code
nicolaus = Santa.new("male", "white")
nicolaus.speak
nicolaus.eat_milk_and_cookies("oatmeal")
santas = []
santas << Santa.new("male", "Latino")
santas << Santa.new("male", "black")
santas << Santa.new("female", "Mystical Creature (unicorn)")
p santas
puts ""

# Release 2: Change an Attribute with a Method	
puts ""
p nicolaus.celebrate_birthday
nicolaus.gender = "female"
nicolaus
puts nicolaus.ethnicity
puts nicolaus.age
puts ""

# Release 4: Build Many, Many Santas

50.times do |santa|
	puts "------------"
	santa = Santa.new(example_genders.sample,example_ethnicities.sample)
	santa.age = rand(141)
	puts "Santa's age: #{santa.age}"
	puts "Santa's gender: #{example_genders}"
	puts "Santa's ethnicity: #{example_ethnicities}"
end
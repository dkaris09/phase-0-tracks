	
# Release 0: Bring Santa to Life

class Santa
# Release 3: Refactor with attr_reader and attr_accessor
	attr_reader :age, :ethnicity # for getters
	attr_accessor :reindeer_ranking, :gender # for setters	

	def initialize(gender, ethnicity, hair)
		puts "Initializing Santa instance.."
		@gender = gender
		@ethnicity = ethnicity
		@facial_hair = hair
		@reindeer_ranking =  
		["Rudolph", "Dasher", "Dancer", "Prancer", 
		"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, Ho, Ho! Happy Holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!!!"
	end
	
	def celebrate_birthday(age)
		age.to_i + 1
	end

	def get_mad_at(name)
		@reindeer_ranking = reindeer_arr
		reindeer_arr.insert(8, reindeer_arr.delete_at(0))
	end
end

	#Outside class

# Release 1: Give Santa Attributes for Christmas
santas = []
genders = ["female", "bigender", "male","N/A"]
catholic_ethnicities = ["American", "Italian", "Irish", "Polish","Brazilian", "Filipino", "French"]
example_hair = ["beard", "no beard", "mustache", "Fu Manchu"]
genders.length.times do |i|
	santas << Santa.new(genders[i],catholic_ethnicities[i], example_hair[i])
end 

p santas
nicolaus = Santa.new("male", "American","beard")

# Driver Code
nicolaus = Santa.new("male", "American","beard")
nicolaus.speak
nicolaus.eat_milk_and_cookies("oatmeal")
santas = []
santas << Santa.new("male", "Polish", "mustache")
santas << Santa.new("male", "Irish", "no beard")
santas << Santa.new("female", "Brazilian", "Fu Manchu")
p santas
puts ""

# Release 2: Change an Attribute with a Method	
puts ""
p nicolaus.celebrate_birthday(0)
nicolaus.gender = "female"
nicolaus
puts nicolaus.ethnicity
puts nicolaus.age
puts ""

# Release 4: Build Many, Many Santas

50.times do |santa|
	puts "------------"
	santa = Santa.new(genders.sample, catholic_ethnicities.sample)
	santa.age = rand(141)
	puts "Santa's age: #{santa.age}"
	puts "Santa's gender: #{gender}"
	puts "Santa's ethnicity: #{ethnicity}"
end
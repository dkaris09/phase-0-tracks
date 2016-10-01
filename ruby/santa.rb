	
# Release 0: Bring Santa to Life

class Santa

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
	# setter method
	def gender=(new_gender)
		@gender = new_gender
	end
	# getter methods
	def age
		@age
	end
	def ethnicity
		@ethnicity
	end
end

	#Outside class

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
nicolaus.gender = "female"
p nicolaus
puts ""
# Release 1: Give Santa Attributes for Christmas
santas = []
genders = ["female", "bigender", "male","N/A"]
catholic_ethnicities = ["American", "Italian", "Irish", "Polish","Brazilian", "Filipino", "French"]


example_hair = ["beard", "no beard", "mustache", "Fu Manchu"]
genders.length.times do |i|
	santas << Santa.new(genders[i],catholic_ethnicities[i], example_hair[i])
end 
p santas
# Release 2: Change an Attribute with a Method	
puts ""
p nicolaus.celebrate_birthday(0)

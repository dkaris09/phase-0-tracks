# Release 0: Bring Santa to Life
class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :gender 
	
	def initialize(gender, ethnicity)
		puts  "Initializing Santa instance ..."
	 	@gender = gender
	 	@ethnicity = ethnicity 
	 	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	 	@age = 0 
	end 

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def  eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end 

	def celebrate_birthday
		@age += 1 
	end 

	def get_mad_at(reindeer)
		i = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(i))
		p @reindeer_ranking
	end 
	
	def rand_age 
		@rand_age = rand(140)
	end 
end 

# Driver Code
santa = Santa.new("male", "white") 
p santa.speak 
p santa.eat_milk_and_cookies("oatmeal")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santa.celebrate_birthday
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# Release 2: Change an Attribute with a Method
p santa.get_mad_at("Vixen")
p santa.age 
p santa.ethnicity
p santa.rand_age

100.times do |i|
	puts "Iterating through names list to create santas ..."
	new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "Gender: #{new_santa.gender}"
	puts "Ethnicity: #{new_santa.ethnicity}"
	puts "Age: #{new_santa.rand_age}"
	puts "----"
end

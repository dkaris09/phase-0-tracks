#Release One
puts "What is your name?"
input = gets.chomp

if input == "Daniel"
	nice_name = true
else
	wrong_name = false
end

current_age =32
current_year = 2016

puts "How old are you?"
age = gets.chomp.to_i
puts "When were you born?"
birth_year= gets.chomp.to_i
current_year = 2016

age = current_year - birth_year
if age == current_age
	stated_age = true
else
	stated_age = false
end

puts "Our company cafeteria serves garlic bread."
puts "Should we order some for you?(y/n)"
input = gets.chomp

if input == "y"
	wolves_like_garlic = true
else
	vampires_like_garlic = false
end

puts "Would you like to enroll in the 
company’s health insurance?(y/n)" 
input= gets.chomp

if input == "y"
	wolves_like_sunshine = true
else
	vampires_like_sunshine = false
end



end
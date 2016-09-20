#Release 1
puts "How many employees are being processsed?"
employees = gets.chomp
while employees >= 0 
	employees -= 1

puts "What is your name?"
input = gets.chomp

if input == "Drake Cula" || "Tu Fang"
	vampire_name = true
else
	nice_name = false
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
	wrong_age = false
end

#Release 2
puts "Our company cafeteria serves garlic bread."
puts "Should we order some for you?(y/n)"
garlic = gets.chomp.to_s

if garlic == "y"
	wolves_like_garlic = true
else
	vampires_like_garlic = false
end

puts "Would you like to enroll in the 
company’s health insurance?(y/n)" 
insure = gets.chomp.to_s

if insure == "y"
	wolves_like_sunshine = true
else
	vampires_like_sunshine = false
end

#Do The Thing
 if stated_age && wolves_like_garlic || wolves_like_sunshine
 	puts "Probably not a vampire."
 elsif wrong_age && vampires_like_garlic || vampires_like_sunshine
 	puts  "Probably a vampire."
 elsif wrong_age && vampires_like_garlic && vampires_like_sunshine
 	puts "Almost cerntainly a vampire."
 elsif vampire_name
 	puts "Definately a vampire."
 else
 	puts "Results inconclusive."	
 end
end

#Release 4
valid_input = false

until valid_input
	puts "Do you have any allergies? Write done to finish."
	user_input = gets.chomp
	if user_input =="done"
		valid_input= true
		puts "Ok that concludes the process."
	elsif user_input == "sunshine"
		valid_input = true
		puts "Probably a vampire."
	else
		puts "Ok are there any more to list?"
	end
end

#Release 5
puts "Actually, nevermind! Let's be friends!"
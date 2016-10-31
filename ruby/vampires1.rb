puts "How many employees are being surveyed?"
employees = gets.chomp.to_i

while employees != 0
puts "What's your name?"
name = gets.chomp  

puts "How old are you?"
age = gets.chomp.to_i 

puts "What year were you born?(xxxx)"
year = gets.chomp.to_i 


verified_age = 2016 - year 

puts "Should we order you garlic bread?(y/n)"
garlic = gets.chomp.to_s

	if garlic == "y" 
		wolves_like_garlic = true
	else 
		vampires_like_garlic = false
	end

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp.to_s

	if  insurance == "y"
		wolves_like_sunshine = true
 	else 
 		vampires_like_sunshine = false
 	end 
 	
puts " "

	if age == verified_age &&  wolves_like_garlic || wolves_like_sunshine then
		puts "Probably not a vampire."
	elsif age != verified_age && vampires_like_garlic || vampires_like_sunshine then
		puts "Probably a vampire."
	elsif age != verified_age && vampires_like_garlic && vampires_like_sunshine then 
		puts "Almost certainly a vampire."
	elsif name == "Drake Cula" || "Tu Fang" then 
		puts "Definitely a vampire."
	else 
		puts "Results Inconclusive."
	end 
 
puts "Name all the allergies you have. Type 'done' to exit."	
allergies = gets.chomp 
until allergies == 'done'
puts "Name all the allergies you have. Type 'done' to exit."	
allergies = gets.chomp 
end 

puts "Your results:
Name: #{name}
Age: #{age}
Birth Year: #{year}
Verified Age: #{verified_age}
Likes Garlic Bread: #{garlic}
Wants Company Insurance: #{insurance}
Known Allegies: #{allergies}"
employees -= 1 
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
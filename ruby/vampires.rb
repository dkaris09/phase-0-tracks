#Release 1
puts "How many employees are being processsed?"
employees = gets.chomp.to_i
while employees > 0 
	employees -= 1

	puts "What is your name?"
	input = gets.chomp

	if input == "Drake Cula" || "Tu Fang"
		vampire_name = true
	else
		nice_name = false
	end

	current_year = 2016

	puts "How old are you?"
	stated_age = gets.chomp.to_i
	puts "When were you born?"
	birth_year= gets.chomp.to_i
	current_year = 2016

	current_age = current_year - birth_year
	if stated_age == current_age
		age = true
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


	#Release 4

	loop do  
		puts "Do you have any allergies? Write done to finish."
		user_input = gets.chomp
		if user_input =="done"
			puts "Ok that concludes the process."
			break
		elsif user_input == "sunshine"
			puts "Probably a vampire."
			break
		else
			puts "Ok are there any more to list?"
		end
	end
end
	#Release 5
	puts "Actually, nevermind! Let's be friends!"
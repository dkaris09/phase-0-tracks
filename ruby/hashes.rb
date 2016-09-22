#Prompt designer applicant for:
	#name
	#address
	#email
	#phone
	#fav shade of blue
#Prompt designer applicant for wallpaper preferences
#can choose more than one option
	#Paisley, Chevrons, Photorealistic, Abstract
#Prompt applicant for opinion on Ombre:
	#Fierce, So last season, or Practically Medieval
	
#convert user input to appropriate data type
#print the hash so user can see responses
#allow user to make changes or type "none" to skip

puts "Name:"
name = gets.chomp
puts "Address:"
address = gets.chomp
puts "Email:"
email = gets.chomp
puts "Phone:"
phone = gets.chomp.to_i
puts "Favorite shade of blue:"
blue = gets.chomp

puts "Wallpaper preferences, chose all that apply:
Paisley, Chevrons, Photorealistic, Abstract"
wallpaper = gets.chomp
puts "Thoughts on Ombre? Fierce, So last season, or
Practically Medieval?"
ombre = gets.chomp

designer_application = Hash.new

designer_application = {
	:name => name,
	:address => address,
	:email => email,
	:phone => phone,
	:blue => blue,
	:wallpaper => wallpaper,
	:ombre => ombre,
}


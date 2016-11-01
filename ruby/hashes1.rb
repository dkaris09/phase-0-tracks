#prompt user for name, address, email, phone, blue shade

puts "What's the client's name:"
name = gets.chomp
puts "What's the client's address:"
address = gets.chomp
puts "Email:"
email = gets.chomp
puts "Phone:"
phone = gets.chomp.to_i
puts "Decor theme:"
decor_theme = gets.chomp

puts client_info = {
	name:   name,
	address: address,
	email: email,
	phone: phone,
	decor_theme: decor_theme
}
	
puts "Make sure we have everything correct. Any changes we should make?"
changes = gets.chomp 

	if changes == "name" 
		puts "Name:"
		name = gets.chomp 
	elsif changes == "address"
		puts "Address:"
		address = gets.chomp
	elsif changes == "email"
		puts "Email:"
		email = gets.chomp
	elsif changes == "phone"
		puts "Phone:"
		phone = gets.chomp 
	elsif changes == "decor theme"
		puts "Decor Theme:"
		decor_theme = gets.chomp 
	else 
		puts "Ok great!"
	end 
puts "Here is the client info once again with any changes."
puts client_info

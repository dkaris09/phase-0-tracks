#prompt user for name, address, email, phone, blue shade

puts "What's the client's name:"
name = gets.chomp.to_s
puts "What's the client's address:"
address = gets.chomp
puts "Do you have children?"
children = gets.chomp.to_s
puts "Phone:"
phone = gets.chomp.to_i
puts "Decor theme:"
decor_theme = gets.chomp.to_s

puts client_info = {
	name:   name,
	address: address,
	children: children,
	phone: phone,
	decor_theme: decor_theme
}
	
puts "Make sure we have everything correct. Any changes we should make?"
changes = gets.chomp 

	if changes == "name" 
		puts "Name:"
		name = gets.chomp.to_s 
	elsif changes == "address"
		puts "Address:"
		address = gets.chomp
	elsif changes == "children"
		puts "Do you have children? (yes/no)"
		children = gets.chomp.to_s
	elsif changes == "phone"
		puts "Phone:"
		phone = gets.chomp.to_i 
	elsif changes == "decor theme"
		puts "Decor Theme:"
		decor_theme = gets.chomp.to_s 
	else 
		puts "Ok great!"
	end 
puts "Here is the client info once again with any changes."
puts client_info

#Driver Code 
client_info[:address] + client_info[:name]
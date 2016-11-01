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

# provide user changes for update	
puts "Make sure we have everything correct. Any changes we should make?"
changes = gets.chomp.to_sym 

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
#convert data entry
	if changes == :name
		value = name
		client_info[changes] = value 
	elsif changes == :address
		value = address
		client_info[changes] = value 
	elsif changes == :children
		value = children
		client_info[changes] = children
	elsif changes = :phone 
		value = phone 
		client_info[changes] = phone 
	elsif changes == :decor_theme
		value = decor_theme
		client_info[changes] = decor_theme
	end 
puts "Here is the client info once again with any changes."
puts client_info

#Driver Code 
client_info[:address] + client_info[:name]
client_info[:decor_theme]
puts client_info
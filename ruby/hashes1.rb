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
puts "Make sure we have everything correct. Any changes we should make? Type 'none' to quit."
key = gets.chomp
	if key ==  "none"
		puts "Ok great!"
	else 
		puts "Update your user input that needs to change:"
		key.to_sym 
		value = gets.chomp 
	end 
	
#Convert data entry 
	if key == :name 
		value.to_s 
	elsif key == :children 
		if value.to_s 
	elsif key == :phone 
		value.to_i 
	elsif key == :decor_theme
		value.to_s 
	end
end 		
puts client_info[key] = value 
puts "Here's the updated client info:"
p client_info
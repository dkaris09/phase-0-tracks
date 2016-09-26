# HOUSE MAKER
# Allow the user to create a house,
# then add rooms, 
# then add items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# BUSINESS LOGIC 

def add_room_to_house!(house, room_name)
	return false if house.keys.length == 5
	house[room_name] =[] 
	return true
end
def add_item_to_room!(house, room_name, item_name)
	house[room_name] << item_name 
end
	# House Hash and room_name key 
	# evaluates to an array
	# shovel item into array or use push
house = {}

# house is the hash
# room_name is the key
# empty array of items is the value

# another way to limit rooms to 5
# if house.keys.length = 5
#	false
# else
#  house [room_name] == []
#	true
#	end
# end

# USER INTERFACE
def print_house(house)
	puts "--------------------------"
	puts "Current house configuration:"
	house.keys.each_with_index do |room_name, index|
		puts "#{index} - #{room_name}: #{house[room_name]}"
	end 
	puts "--------------------------"
end


# Let user add rooms
can_add_rooms = true 
# Stop loop when rooms cannot be added
while can_add_rooms
	# Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp 
	# If user is done, stop loop
	break if room_name == 'done'
	# Otherwise add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
	if !can_add_rooms
		puts "Sorry, that's too many rooms!"
	end
	print_house(house)
end

# Let user add items to rooms 
# In an infinite loop:
loop do 
	# Ask user for the number of the room they want 
	# to add items to
	puts "Enter the number of the room to add an item to
	(or type 'done'):"
	inputted_idx = gets.chomp
	# If the user is done, break
	break if inputted_idx == 'done'
	# Otherwise add the room to the house
	room_idx = inputted_idx.to_i
	puts "Enter the item to add:"
	item_to_add = gets.chomp
	add_item_to_room!(house, house.keys[room_idx], item_to_add)
	print_house(house)
end

# TEST CODE
rooms = ["living Room", "bedroom", "bathroom", "kitchen", "bedroom2", "bedroom3"]

rooms.each do |room|
	room_added = add_room_to_house!(house, room)
	add_item_to_room!(house, room, "cat") if room_added
end
# Expectation is that every room name in
# rooms array will be looped in as a key in 
# add_room_to_house hash with an empty room value.
p house

# assignment variables lose value outside method scope
# arrays can continue to be manipulated outside method scope!
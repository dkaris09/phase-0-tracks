# Release 0: Pseudocode
# Release 1: Initial Solution

# Method to create a list
#list = {}

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def create_list(rough_list)
	list ={}
	grocery_list = rough_list.split
	
	grocery_list.each do |item|
		list[item] = 1
	end
	return list 
end
p list = create_list("carrots apples cereal pizza")



# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:
def add_item(list, item, quantity)
	list[item] = quantity
	list
end
p add_item(list, "carrots", 2)

# Method to remove an item from the list
# input:
# steps:
# output:
def delete_item(list, item)
	list.delete(item)
	list
end
p delete_item(list,"carrots")

# Method to update the quantity of an item
# input:
# steps:
# output:
def update_list(list, item, new_quantity)
	list[item] =new_quantity
	list
end
p update_list(list, "apples", 5)
# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list(groceries)
	groceries.each do |key, value|
		puts "#{key}: + #{value}"
	end 
end    

p print_list(list)
puts " "

# Driver Code 
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4

p add_item(list, "Lemonade", 2)
p add_item(list, "Tomatoes", 3)
p add_item(list, "Onions", 1)
p add_item(list, "Ice Cream", 4)
list 

p delete_item(list, "Lemonade")
p update_list(list,"Ice Cream", 1)
p print_list(list)
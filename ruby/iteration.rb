# 5.3 Mandatory Pairing: Iteration with George and Daniel

# Release 1: Use .each, .map, and .map!

# create an array 

friends = ["Alexander", "George", "Bob", "Daniel"]

buddies = {
	alexander: "school",
	george: "church",
	bob: "school",
	daniel: "work"
}

#.each method
friends.each do |x| 
	puts "Good morning, #{x}!"
end

puts " "

#.map method without bang operator 
friends.map do |x| 
	puts "Good morning, #{x}!"
end 
puts " "
#.map method with bang operator"
friends.map! do |x| 
	puts "Good morning, #{x}!"
end 
puts " "

buddies.each do |name, location|
	puts "#{name}: #{location}"
end 
puts " "

buddies.map do |name, location|
	puts "I know #{name} from #{location}."
end 
puts " "

#Release 2: Use the Documentation 

nums = [1,2,3,4,5,6,7,8,9,10]
buddies = {
	alexander: "school",
	george: "church",
	bob: "school",
	daniel: "work"
}
# deleting any numbers that are less than 5
 nums.delete_if {|score| score < 5 }
p nums  	#delete_if

nums = [1,2,3,4,5,6,7,8,9,10]
# keeping any numbers that are less than 5
 nums.keep_if {|num| num < 5}
p nums 	#keep_if

# only items satisfying a certain condition
puts buddies.select{ |name, location| location == "school"}
	
# A method that will remove items from a data structure until the condition in the #block evaluates to false, then stops 
buddies.reject!{|name, location| location == "school" }
buddies.reject!{|name, location| location == "school" }
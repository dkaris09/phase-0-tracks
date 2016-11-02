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
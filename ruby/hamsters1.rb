# Release 2
puts "Please provide the hamster's name?"
name = gets.chomp.to_s
p name

puts "What is hamster's volume level of his squeak? 1-10(loud)"
volume = gets.chomp.to_i
puts volume

puts "What is the hamster's fur color?"
fur_color = gets.chomp.to_s
puts fur_color

puts "Is the hamster is a good candidate for adoption? (y/n)"
adoption = gets.chomp.to_s
puts adoption

puts "Estimated age of your hamster?"
age = gets.chomp.to_i
puts age

if age == ""
	p nil 
else 
	age
end

#Release 3
puts " Your hamsters name is #{name}."
puts "His squeak level is #{volume}."
puts "His fur color is #{fur_color}."
if adoption == "y"
	puts "Your hamster is good for adoption"
elsif adoption == "n"
	puts "Your hamster is not good for adoption"
end
puts "Your hamster is around #{age} years old!"
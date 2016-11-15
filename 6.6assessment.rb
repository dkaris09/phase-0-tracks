#Wordgame 

#create a class for instance methods you can create and use for Wordgame 
#guesses are limited to length of the word 
#repeated guesses don't count against user 
#user receives feedback 

class Wordgame
	attr_reader		:check_score
	attr_accessor	:guesses
	
	def initialize(word)
		@is_over = false 
		@answer = word 
		@guesses = @answer.length
		@word_array = []
		@answer.length.times {@word_array << "_"}
		@unused_letters = "abcdefghijklmnopqrstuvwxyz"
	end
	
	def user_view
		puts "Mystery Word:" + @word_array.join(" ")
		puts "Letters unused:" + @unused_letters
		puts "Guesses left:" + @Guesses.to_s
	end 
	
	def reveal_letters(letter)
		correct = false 
		if @unused_letters.include?(letter)
			index = 0 
			@answer.each_char do |char|
				if char == letter 
					@word_array[index] = letter 
					correct = true 
				end 
				index += 1 
			end 
		end 
		
		@unused_letters.delete!(letter)
		@guesses -= 1 
		return correct 
	end 
		
	def check_score 
		if @word_array.join == @answer
			@is_over = true 
		end 
	end 
end 

#user interface

puts "Welcome and thanks for playing the Wordgame."
puts "Please type the word to guess:"
word = gets.chomp 
game = Wordgame.new(word)

puts "Let's start the game."
game.user_view

while !(game.check_score || game.guesses == 0)
	puts "Please enter a letter:"
	letter = gets.chomp 
	if game.reveal_letters(letter)
		puts "Correct."
	else
		puts "Wrong!"
	end 
	game.user_view
	game.check_score
end

puts "The mystery word is :#{word}!"
if game.check_score
	puts "You have won!"
else 
	puts "You have lost!"
end 


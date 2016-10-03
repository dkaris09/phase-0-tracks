# Release 2: Test and Build Your Game
class WordGame
	  attr_reader :guess_count
	  attr_reader :is_over
	def initialize(mystery_word)
		@mystery_word = mystery_word
		@guess_count = 0
		@guesses = mystery_word.length
		@is_over = false 
		@underscored_word = mystery_word.gsub(/[a-zA-Z]/, '_')
	end
	def guess_method(word)
		@guess_count += 1 
		if @mystery_word == word 
			@is_over = true
		else
			false
		end
	end
end
	
# user interface 
puts "Guess the Mystery Word!"
word = WordGame.new

while !word.is_over
	puts "Can you guess what the word is?"
	guess = gets.chomp
	if !word.guess_method(guess - 1)
		puts "Nope! Try again."
	end
end

puts "You won in #{word.guess_count} guesses!"

# Release 1: Design a Game
# turn mystery word into series of underscores
# change underscore to appropriate letter if correctly guessed 
# after each guess we need to add 1 to @guess_count
# if @guess_count = @guesses || word solved then @is_over = true
# after game is over print appropriate message
# repeating the same guess doesn't add 1 to @guess_count
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
	def guess_method(letter)
		@guess_count += 1 
		
	end
end
	

# Release 1: Design a Game
# turn myster word into series of underscores
# change underscore to appropriate letter if correctly guessed 
# after each guess we need to add 1 to @guess_count
# if @guess_count = @guesses || word solved then @is_over = true
# after game is over print appropriate message
# repeating the same guess doesn't add 1 to @guess_count
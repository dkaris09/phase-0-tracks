# ROBOT TRANSLATOR

# If a letter is capitalized and it's in the
# first half of the alphabet, it becomes a "bloop".
# Otherwise, if a letter is capitalized or it's the
# letter 'e', it becomes "buzz".
# If it's not a letter at all, it becomes "boing".
# Otherwise, it becomes "beep".
# "Happy Halloween!" =>

# BUSINESS LOGIC
def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvqxyz"
	halfway = alphabet.length / 2	# or you can type 13
	is_capitalized = (char.upcase == char)

	if alphabet.index(char.downcase) == nil # or put !alphabet.index(char.downcase)
		"boing"
	elsif is_capitalized && alphabet.index(char.downcase) < halfway
		"bloop"
	elsif is_capitalized || char == "e"
		"buzz"			
	else
		"beep"
	end
end

def translate_phrase(phrase)
	char_index = 0 		#loop counter
	traslated_response = ""			
	# while loop goes through each character in	translated_phrase and stores in container translated_response
	while char_index < phrase.length
		traslated_response << translate_char(phrase[char_index])									
		# characters get translated and stored in translated_response					
		char_index += 1
	end
	traslated_response
end

# USER INTERFACE

loop do
	puts "Enter a phrase to translate (or type 'q' for quit):"
	inputted_phrase = gets.chomp
	break if inputted_phrase == 'q'
	puts translated_phrase(inputted_phrase) # same as line 37 return value but with user interaction
end




#Release 0: Attempt a Tricky Algorithm
name_hash = {}

# Swap the first and last name.

puts "What is your real name? Type done to exit."
name = gets.chomp
while true 

	if name == "done"
		break
	end

#Create Fake Name	
name_arr = name.split	 						#splits name into array of 2 names 
name_split = name_arr[1] + " " + name_arr[0]	#swaps first with last name
name_chars = name_split.downcase.chars			#makes letters lowercase


# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
	next_vowel = "aeiou"
	name_chars.map! do |letter|
    	index = next_vowel.index(letter) 
    if index != nil
      next_vowel[(index+1)%5]
    else
      letter
    end
end 


# swap consonants to next consonant in line
 
next_consonant = "bcdfghjklmnpqrstvwxyz"
  name_chars.map! do |letter|
    index = next_consonant.index(letter)
    	if index != nil
      		next_consonant[(index+1)%21]
    	else
      		letter
    	end
	end 

	name_split = name_chars.join('')
  	name_split = name_split.split(' ').map(&:capitalize).join(' ')
  	puts name_split
end
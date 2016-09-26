#take the spy's first and last name 
#swap the first with the last name 
#change all the vowels in the name to the next vowel in line 
def vowel?(letter)
	vowels = "aeiou"
	if vowels.include?(letter) 
	letter = true 
else 
	letter = false 
end 
end

vowel?("a")

def consonant?(letter)
	!vowel?(letter)
end
	
def spy_method(first_name, last_name)
	full_name = last_name + first_name #swap names
	full_name.downcase! #lowercase all letters

	split_name= full_name.split("") #split string names an array
	p split_name
	split_name.map! do |letter|
		vowels = "aeiou"
		index = vowels.index(letter)
		p index
		if index == nil #if consonant
		letter 
	else
		 #modulus returns 0 if you try to access the non existent 5th vowel. 
		 #0 then starts the vowel loop again.
		vowels[(index+1) % 5]
	end
	end
	p split_name
end

spy_method("Felicia", "Torres")

#name1= "Felicia" 
#name2= "Torres"
#swap Felicia with Torres then combine into full name
#name1
	#full_name.next("aeiou")
	#full_name.next("^aeiou")

def spy_method(name1,name2)
	full_name= name2 + " " + name1
	full_name.downcase!
	split_name = full_name.split("")
	puts split_name
	split_name.map! do |letter|
	vowels = "aeiou"
	index = vowels.index(letter)
	p index
	if index == nil
	letter
	else
		vowels[(index+1) % 5]
	end
	end
	p split_name
end
spy_method("Felicia","Torres")

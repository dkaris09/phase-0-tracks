def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	string = gets.chomp
	length = string.length
	index = 0
	result = ""

	until index == length
		result += alphabet[alphabet.index(string[index])-1]
		index += 1
	end
	puts result
end

decrypt
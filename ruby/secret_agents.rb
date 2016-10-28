
def encrypt(input)
  index = 0 
  while index < input.length
  if input[index] == ""     #space character should remain a space character
    index += 1 
  else 
    if input[index] == "z"  #see if z goes to aa 
    input[index] = "a"
    else 
    input[index] = input[index].next! #for every letter other than z, switch one over
    end 
    index += 1 
end
end 
puts  input
end 

def decrypt(input)
    # How can you find out where a letter is in the alphabet, then access the letter right before it?
    def letter_length(letter) #defining method within a method to set length equal to index 
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_index = alphabet.index(letter) -1   #accounts for length being 1 additional value 
    alphabet[new_index]             #puts new letter formation with new index value 
    end 
    
    # now length while loop can be reused 
    index = 0 
    while index < input.length 
    if input[index] == ""           #space character should remain a space character
    index += 1 
    else 
        input[index] = letter_length(input[index])
        index += 1 
    end 
end 
puts input #result of letter_reverse method and while loop 
end 

#Release 5: Add an Interface
puts "Would you like to decrypt or encrypt a password?"
preference = gets.chomp

puts "Password, please."
password = gets.chomp

if preference == "encrypt"
    puts encrypt(password)
else
    puts decrypt(password)
end 

# Driver Code
#puts encrypt("abc") 
#puts encrypt("zed")
#puts decrypt("bcd") 
#puts decrypt("afe") 
#puts decrypt(encrypt("swordfish"))
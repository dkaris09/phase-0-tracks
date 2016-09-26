
def encrypt(string)
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

#I really struggled with this and had to turn in what I had. 
#I'm going to try to redo this againnext week.
>>>>>>> 31e143bb6dc3886cc4c2d53054740aa9032da5b0

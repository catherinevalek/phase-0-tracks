# For each letter in a string,
	# Find what letter comes next in the alphabet
	# Replace original letter with that next letter in the alphabet
	# Move on to next letter in original string

def encrypt(word)
	encrypt_word = ""
	index = 0
	while index < word.length
		if word[index] == "z"
			encrypt_word += "a"
			index += 1
		else
			encrypt_word += word[index].next
			index += 1
		end
	end
	p encrypt_word
end


# For each letter in a string,
	# Find what letter comes before it in the alphabet
	# Feplace original letter with that letter that comes before it in the alphabet
	# Move on to next letter in original string

def decrypt(word)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	decrypt_word = ""
	index = 0
	while index < word.length
		decrypt_word += alphabet[alphabet.index(word[index]) - 1]
		index += 1
	end
	p decrypt_word
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))
#This works because, the encrypt method produces a string, and the decrypt method calls for a string. 

# Ask the user if they would like to encrypt or decrypt their password
# If the user enters "encrypt,"
	# ask the user for their password
	# exceute the encrypt method with that password
# If the user enters "decrypt,"
	# ask the user for their password
	# exceute the decrypt method with that password
# Otherwise tell the user they need to start over
	
puts "Would you like to decrypt or encrypt a password? (decrypt/encrypt)"
password_decision = gets.chomp

if password_decision == "decrypt"
	puts "What's your password?"
	password = gets.chomp
	decrypt(password)
elsif password_decision == "encrypt"
	puts "What's your password?"
	password = gets.chomp
	encrypt(password)
else
	p "You did not enter decrypt or encrypt. Please start over."
end

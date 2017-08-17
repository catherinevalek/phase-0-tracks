#for a name given
#swap the positions of the first and last name
#if a character in the name is a vowel 
	#change the vowel to the next vowel in 'aeiou'
#if the character is a consonant
	#change the consonant to the next consonant in the alphabet



def create_fake_name(name_given)
	#create array from name and reverse 
	reversed_name = name_given.split(' ').reverse

	#create an array of characters from each name
	new_first_name = reversed_name[0].split('')
	new_last_name = reversed_name[1].split('')
	final_name = ''

	#iterate and change the characters 
	new_first_name.map! do |character|
		change_characters(character)
	end
	new_last_name.map! do |character|
		change_characters(character)
	end

	#create string out of character array
	new_first_name = new_first_name.join('').capitalize
	new_last_name = new_last_name.join('').capitalize

	#concatenate full name with a space in between
	final_name = new_first_name + ' ' + new_last_name

	#result is the changed name
	final_name
end


def change_characters(char)
	#check if character is a consonant
	vowels = 'aeiou'
	consonants = 'bcdfghjklmnpqrstvwxyz'
	in_consonants = consonants.include? char.downcase 
	new_character = ''

	#add next consonant in alphabet to a new string
	if in_consonants
		if char.downcase == 'z'
			new_character += 'b'
		else
			new_character = consonants[consonants.index(char.downcase) + 1]
		end
	#add next vowel in alphabet to a new string
	else
		if char.downcase == 'u'
			new_character += 'a'
		else
			new_character = vowels[vowels.index(char.downcase) + 1]
		end
	end

	#result is the new character
	new_character
end


#keep asking user to enter name until 'quit' and store names in a hash
stored_names = {}
loop do 
	puts "Please enter a name. Enter 'quit' to exit."
	original_name = gets.chomp
	break if original_name == 'quit'
	fake_name = create_fake_name(original_name)
	p fake_name
	stored_names[original_name] = fake_name
end

#print stored names
stored_names.each do |orig, fake| 
	p "#{fake} is actually #{orig}"
end







#for a name given
#swap the positions of the first and last name
#if a character in the name is a vowel 
	#change the vowel to the next vowel in 'aeiou'
#if the character is a consonant
	#change the consonant to the next consonant in the alphabet



def create_fake_name(names)
	reversed_name = names.split(' ').reverse
	new_first_name = reversed_name[0].split('')
	new_last_name = reversed_name[1].split('')
	final_name = ''
	
	new_first_name.map! do |character|
		change_characters(character)
	end
	new_last_name.map! do |character|
		change_characters(character)
	end

	new_first_name = new_first_name.join('').capitalize
	new_last_name = new_last_name.join('').capitalize
	final_name = new_first_name + ' ' + new_last_name
	final_name
end


def change_characters(char)
	vowels = 'aeiou'
	consonants = 'bcdfghjklmnpqrstvwxyz'
	in_consonants = consonants.include? char.downcase 
	new_character = ''

	if in_consonants
		if char.downcase == 'z'
			new_character += 'b'
		else
			new_character = consonants[consonants.index(char.downcase) + 1]
		end
	else
		if char.downcase == 'u'
			new_character += 'a'
		else
			new_character = vowels[vowels.index(char.downcase) + 1]
		end
	end
	new_character
end


loop do 
	puts "Please enter a name. Enter 'quit' to exit."
	user_name = gets.chomp
	break if user_name == 'quit'
	p create_fake_name(user_name)
end






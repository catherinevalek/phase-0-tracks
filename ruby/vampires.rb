#determine if employee is a vampire
def vampire_decision ()
	puts "What is your name?"
	vamp_name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "Should we order garlic break for you? (y/n)"
	garlic_decision = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance_decision = gets.chomp

	#ask for allergies
	#keep asking until user enters done
	#if allergic to sunshine exit method
	puts "What are your allergies? List them one at a time."
	allergies = gets.chomp
	while allergies != "done"
		if allergies == "sunshine"
			p "Probably a vampire"
			"Actually, never mind! What do these questions have to do with anything? Let's all be friends."
			return
		else
			puts "What's another allergy?"
			allergies = gets.chomp
		end
	end

	#determine if employee age is correct
	#if (age == (2017 - birth_year)) || (age == (2016 - birth_year))
	if (2017 - birth_year) - age <= 1 && (2017 - birth_year) - age >= 0
		age_correct = true
	else
		age_correct = false
	end

	vampire_result = ''

	#age right, and is willing to eat garlic bread or sign up for insurance
	if age_correct == true && (garlic_decision == "y" || insurance_decision == "y")
		vampire_result = 'Probably not a vampire.'
	end

	#age wrong, and hates garlic bread or waives insurance
	if age_correct == false && (garlic_decision != "y" || insurance_decision != "y")
		vampire_result = 'Probably a vampire.'
	end

	#age wrong, hates garlic bread, and doesn’t want insurance
	if age_correct == false && garlic_decision != "y" && insurance_decision != "y"
		vampire_result = 'Almost certainly a vampire.'
	end

	#name of “Drake Cula” or “Tu Fang”
	if vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		vampire_result = 'Definitely a vampire.'
	end

	if vampire_result == ''
		vampire_result = 'Results inconclusive.'
	end

	p vampire_result
end

#ask how many users will be processed and run method for each employee
puts "How many employees will be processed?"
num_employees = gets.chomp.to_i

until num_employees == 0
	vampire_decision()
	num_employees = num_employees - 1
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."




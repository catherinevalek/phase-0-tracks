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


#determine if employee age is correct
if (age == (2017 - birth_year)) || (age == (2016 - birth_year))
	age_correct = true
else
	age_correct = false
end

#determine if employee eats garlic
if garlic_decision == "y"
	eats_garlic = true
else 
	eats_garlic = false
end

#determine if employee wants insurance
if insurance_decision == "y"
	wants_insurance = true
else 
	wants_insurance = false
end


vampire_result = 0

if age_correct == true && (eats_garlic == true || wants_insurance == true)
	vampire_result = 1
end
if age_correct == false && (eats_garlic == false || wants_insurance == false)
	vampire_result = 2
end
if age_correct == false && eats_garlic == false && wants_insurance == false
	vampire_result = 3
end
if vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
	vampire_result = 4
end
if vampire_result == 0
	vampire_result = 5
end

p "this is the result #{vampire_result}"

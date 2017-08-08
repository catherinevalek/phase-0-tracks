puts "What is the hamster's name"
hName = gets.chomp

puts "What level of squeakiness does it have? (1-10)"
squeek_lvl = gets.chomp.to_i	

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is hamster a good candidate for adoption? (Y/N)"
adopt = gets.chomp

puts "What is the hamster est. age? (if unknown input nil or unknown)"
age = gets.chomp


if age == "nil" || age == "unknown"
	age = "unknown" 
else 
	age = age.to_i
end

puts "The hamster's name is #{hName}!"
puts "The level of squeakiness is #{squeek_lvl}!"
puts "The hamster's fur color is #{fur_color}!"
puts "Is the hamster a good candidate for adoption? #{adopt}!"
puts "The hamster's age is #{age}!"
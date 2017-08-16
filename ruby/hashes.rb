#Prompt each client for name, age, number of children, decor theme, if they like polka dots
	#Make sure name and decor theme are strings
	#Make sure age and number of children are integers
	#Make sure answer to polka dots is a boolean
#Print hash 
#Let user make a change unless they enter "none" 
#Print the hash

#Declare a hash for client info
client_details = {}

#Prompt designer for client info
puts "What's the client's name?"
client_details[:name] = gets.chomp

puts "What's the client's age?"
client_details[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_details[:num_children] = gets.chomp.to_i

puts "What's the client's decor theme?"
client_details[:decor_theme] = gets.chomp

puts "Does the client like polka dots? true/false"
if gets.chomp == "true"
	client_details[:likes_dots] = true
else
 	client_details[:likes_dots] = false
end

#Print hash
p client_details

#Ask designer if they need to update something
puts "What do you need to update? (name/age/num_children/decor_theme/likes_dots/none)"
category = gets.chomp.to_sym
if category != :none
	puts "What do you want it updated to?"

	if category == :name || category == :decor_theme
		change = gets.chomp
		client_details[category] = change
	elsif category == :age || category == :num_children
		change = gets.chomp.to_i
		client_details[category] = change
	else 
		if gets.chomp == "true"
			client_details[:likes_dots] = true
		else
			client_details[:likes_dots] = false
		end
	end
end

#Print hash
p client_details
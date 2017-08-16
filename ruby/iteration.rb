def food_order
   puts "Let me make sure I got your order correct."
   yield("hamburger", "coke", "cake")
end
food_order { |entree, drink, dessert| puts "You ordered #{entree}, #{drink}, #{dessert}." }

#declare array
months = ["june", "july", "august", "september"]
puts "Original data:"
p months
#Iterate through months with .each
months.each do |month|
    puts month
end
puts "After call:"
p months

puts "Original data:"
p months
#Modify data with .map!
months.map! do |month|
	month.upcase
end
puts "After call:"
p months



#declare hash
seasonsal_activites = {"spring" => "bike_riding", "summer" => "swimming", "fall" => "reading", "winter" => "skiing"}

puts "Original data:"
p seasonsal_activites
#Iterate through seasonal_activities with .each
seasonsal_activites.each do |season, activity|
    puts "#{activity} is something you do in the #{season}"
end
puts "After call:"
p seasonsal_activites


letters = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}

numbers = [1, 2, 3, 4, 5, 6]

#A method that iterates through the items, deleting any that meet a certain condition
numbers.delete_if { |num| num < 5 }

letters.delete_if { |item, value| item >= "c" }

#A method that filters a data structure for only items that do satisfy a certain condition
numbers.keep_if { |num| num < 5 }

letters.keep_if { |item, value| item >= "c" }

#A different method that filters a data structure for only items satisfying a certain condition
numbers.select { |num| num < 5 }

letters.select { |item, value| item > "a" }

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
numbers.reject { |num| num < 4 }

letters.reject { |item, value| item > "a" }




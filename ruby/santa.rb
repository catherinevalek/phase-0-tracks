class Santa

	attr_reader :ethnicity
	attr_accessor :gender, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  		@age = 0

	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.rotate!(@reindeer_ranking.index(reindeer_name) + 1)
	end

	# def age 
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender
	# 	@gender
	# end

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

end

# santas = []
# genders = ["male", "female"]
# ethnicities = ["black", "white"]
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end

# p santas[1].celebrate_birthday
# p santas[1]. get_mad_at("Vixen")
# santas[1].gender = "n/a"
# p santas[1].gender
# p santas[1].age
# p santas[1].ethnicity



example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	p santa.gender
	p santa.ethnicity
	santa.age = rand(0..140)
	p santa.age
end



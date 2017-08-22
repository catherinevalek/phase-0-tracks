class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof! " * int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    int * 7
  end

  def sit
    puts "*sit*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(2)
puppy.sit

class Monkey 

	def initialize
		puts "Initializing new monkey instance ..."
	end

	def speak(int)
		puts "Ooo Ooo Ahh Ahh " * int
	end

	def eats_banana
		puts "*eats banana*"
	end

end

all_monkeys = []
instances = 0
while instances < 50
	all_monkeys << Monkey.new
	instances += 1
end

all_monkeys.each do |monkey|
	monkey.speak(2)
	monkey.eats_banana
end


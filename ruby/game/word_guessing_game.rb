#get a word from the user1
#let user2 keep guessing for the length of the word
  #ask user2 for a letter
  #if the letter is in the word and hasn't been guessed before
    #return the placement of letter in word
    #decrease num_guesses left 
  #otherwise
    #print current status of word
#after guessing the user will get one chance to guess the word
#print a message

class Game

  attr_accessor :length
  attr_reader :num_guesses

  def initialize(word)
  	@word = word.strip
  	@found_letters = {}
  	@num_guesses = 0
  	@used_letters = []
  end

  def word_length
  	@length = @word.length
  end

  def placement_list
  	num = 0
  	while num < @length
  		@found_letters[num] = '_' 
  		num += 1
  	end
  end

  def check_letter(character)
  	@num_occurences = @word.count character
  end

  def already_tried(character)
    if @used_letters.include? character
      return true 
    else
      return false
    end
  end

  def find_index(character, range = 0)
  	@index = @word.index character, range
  end

  def append (letter, index)
  	@found_letters[index] = letter
  end

  def status
  	@status = (@found_letters.values).join('')
  	p @status
  end

  def add_letter(user_char)
    @range = 0 
  	if check_letter(user_char) != 0 && !already_tried(user_char)
  	  while @num_occurences > 1
  	    find_index(user_char, @range)
  	  	append(user_char, @index)
	  	@range = @index + 1
	  	@num_occurences -= 1
  	  end
  	  if @num_occurences == 1 
  	  	find_index(user_char, @range)
  	  	append(user_char, @index)
  	  	@num_guesses = @num_guesses + 1
  	  	@used_letters << user_char
  	  end
  	elsif !already_tried(user_char)
  	  @num_guesses = @num_guesses + 1
  	  @used_letters << user_char
  	else
  	  @num_guesses = @num_guesses
    end
    status
  end
end

puts "Enter a word."
word = gets.chomp
game = Game.new(word)
max_attempts = game.word_length
game.placement_list
user_attempts = game.num_guesses

while game.num_guesses < max_attempts 
  p "You are on guess ##{game.num_guesses}"
  puts "Guess a letter."
  letter = gets.chomp
  game.add_letter(letter)
end

puts "Final chance. What's the word?"
final = gets.chomp
final = final.strip
if final == word
  p "Congrats, you're correct!"
else
  p "Sorry, you're wrong!"
end
 




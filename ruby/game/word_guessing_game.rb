#get a word from the user1
#let user2 keep guessing for the length of the word
  #ask user2 for a letter
  #if the letter is in the word and hasn't been guessed before
    #return the placement of letter in word
    #decrease guesses left 
  #otherwise
    #print current status of word
#after guessing the user will get one chance to guess the word
#print a message

# class Game

#   def initialize(word)
#   	@word = word
#   	@found_letters = {0 => '_', 1 => '_', 2 => '_', 3 => '_', 4 => '_'}
#   	@split_word = @word.split('')
#   	@num = 2
#   end

#   def get_word
#   	@word
#   end

#   def guesses
#   	@guesses = @word.length
#   end

#   def check_letter(character)
#   	@num_occurences = @word.count character
#   end
  
#   def find_index(character, range = 0)
#   	@index = @word.index character, range
#   end

#   def append (letter, index)
#   	@found_letters[index] = letter
#   end

#   def add_letter(user_char)
#   	  @range = 0 
#   	  @word.each_char do |word_char|
#   	  	if user_char == word_char
#   	  	  while @num > 1
#   	  	    @found_letters[find_index(word_char, @range)] = user_char
#   	  	    @range = (find_index(word_char, @range) + 1)
#   	  	    @num -= 1
#   	  	  end
#   	  	  if @num == 1 
#   	  	    @found_letters[find_index(word_char, @range)] = user_char
#   	  	  end
#   	  	else
#   	  	  p '_'
#   	  end

#     end
#     p @found_letters
#   end

# end


# puts "Enter word."
# word = gets.chomp
# count = word.length
# guess = Game.new("apple")
# until count == 0 
# 	puts "enter a character"
# 	letter = gets.chomp
# 	guess.add_letter(letter)
# 	count -= 1
# end

class Game

  attr_accessor :length

  def initialize(word)
  	@word = word
  	@found_letters = {}
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
  	if @found_letters.has_value?(character)
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
  	  end

      end
    status
  end
end

puts "Enter a word"
word = gets.chomp
guess = Game.new(word)
guess.word_length
guess.placement_list

guess.length.times do 
  puts "enter a letter"
  letter = gets.chomp
  guess.add_letter(letter)
 end
# #guess.check_letter('a')

# guess.add_letter('p')
# #guess.check_letter('e')
# guess.add_letter('c')
# guess.add_letter('e')
# guess.add_letter('a')

# #guess.check_letter('p')
# while @length > 0


# user interface

# puts "Welcome to the Game!"
# game = Game.new

# while !game.is_over
#   puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
#   guess = gets.chomp.to_i
#   if !game.check_cup(guess - 1)
#   	puts "Nope! Try again."
#   end
# end

# puts "You won in #{game.guess_count} guesses!"

#get a word from the user1
#let user2 keep guessing for the length of the word
  #ask user2 for a letter
  #if the letter is in the word and hasn't been guessed before
    #return the placement of letter in word
    #decrease guesses left 
  #otherwise
    #print current status of word
#after guessing the user will get one chance to guess the word
#print a message





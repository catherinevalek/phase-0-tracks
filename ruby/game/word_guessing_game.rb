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

class Game
  def initialize(word)
  	@word = word
  end

  def get_word
  	@word
  end
end
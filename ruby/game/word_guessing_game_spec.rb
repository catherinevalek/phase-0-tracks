require_relative 'word_guessing_game'

describe Game do
  let(:word) { Game.new("apple") }

  it "stores the word given by user1 on initialization" do
    expect(word.get_word).to eq "apple"
  end

  it "stores max number of guesses as length of word" do
    expect(word.guesses).to eq 5
  end

  it "checks if letter by user2 is in word" do
    expect(word.check_letter("i")).to eq 0
  end

    it "checks index" do
    expect(word.find_index("p")).to eq 1
  end

  it "stores found letters" do
    expect(word.add_letter('p')).to eq (['p','p'])
  end
end
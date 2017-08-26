require_relative 'word_guessing_game'

describe Game do
  let(:word) { Game.new("apple") }

  it "stores length of word" do
    expect(word.word_length).to eq 5
  end

  it "checks how many times letter is in word" do
    expect(word.check_letter("p")).to eq 2
  end

    it "checks index of letter in word" do
    expect(word.find_index("p")).to eq 1
  end

  it "stores found letters" do
    expect(word.add_letter('p')).to eq ("pp")
  end
end
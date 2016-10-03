require_relative 'wordgame'

describe WordGame do 
	let(:word) { WordGame.new }

	it "shuffles the words in mystery_word array" do 
		expect (word).to match_array ["unicorn", "pony", "stallion"]
	end

	it "ends the game if word correctly guessed" do 
		expect(word).to eq ["unicorn"]
	end

	it "changes the mystery word letters to underscores" do
		expect(word).to eq [mystery_word.gsub(/[a-zA-Z]/, '_']
end

# 'describe' block to contain the group of'it' tests for WordGame class
# 'it' block for each individual rspec test 
# expect(Wordgame code).to eq [result expected]
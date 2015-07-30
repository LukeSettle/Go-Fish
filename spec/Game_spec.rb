describe 'Game' do
	it 'is initialized with a deck' do
		game = Game.new
		deck = game.deck
		expect(deck[count]).to eq("52")
	end
end
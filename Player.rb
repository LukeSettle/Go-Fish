class Player
	attr_reader :name, :hand
	def initialize name
		@name = name
		@hand = []
	end

	def guess
		card = gets.chomp.upcase
		card
	end
end
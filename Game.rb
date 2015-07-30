require_relative 'Player'
require 'httparty'
require 'pry'
class Game
	include HTTParty
	attr_reader :player1, :player2, :deck
	def initialize 
		@player1 = Player.new "luke"
		@player2 = Player.new "Luke2"
		@deck = HTTParty.get("http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1")
		@id = @deck["deck_id"]
	end

	def deal player, player2
		cards = HTTParty.get("http://deckofcardsapi.com/api/deck/#{@id}/draw/?count=7")
		player.hand << cards
		cards = HTTParty.get("http://deckofcardsapi.com/api/deck/#{@id}/draw/?count=7")
		player2.hand << cards
	end

end

game = Game.new
deck = game.deck
game.deal game.player1, game.player2

guess = game.player1.guess
binding.pry
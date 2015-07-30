require 'pry'
require_relative "Game"
require_relative "Player"
game = Game.new
ask = game.guess @player1, "as"
binding.pry

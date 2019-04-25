#!/usr/bin/env ruby

load 'player.rb'
load 'logic.rb'
load 'board.rb'

board = Board.new
player1 = Player.new(board)
player2 = Player.new(board)
game_starter = Game.new(player1,player2)
game_starter.turn
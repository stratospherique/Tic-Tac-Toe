load 'player.rb'
load 'board.rb'
load '../lib/user-interface.rb'
load 'rules.rb'

class Game
  attr_accessor :board
  include UsrInterface
  include GameRules
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def turn
    @player1.name = request_name
    @player2.name = request_name
    
    loop do
    break if @player1.play(1)
    break if @player2.play(2)
    end
  end
end

board = Board.new
player1 = Player.new(board)
player2 = Player.new(board)
game_starter = Game.new(player1,player2)
game_starter.turn

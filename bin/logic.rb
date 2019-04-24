load 'player.rb'
load 'board.rb'
load '../lib/user-interface.rb'
load 'rules.rb'

class Game
  attr_accessor :board
  include UsrInterface
  include GameRules
  def initialize(player1, player2 )
    @player1 = player1
    @player2 = player2
  end

  def turn
    @player1.name = request_name
    @player2.name = request_name
    
    loop do
    break if @player1.play
    break if @player2.play

=begin
      curr_player = (i == 1) ? @player1 : @player2
      system"clear"
      display(@board.grid)
      move = request_move(@board.grid, curr_player.order)
      @board.placement(move, curr_player.order) # << board
      if checkwin(@board.grid, sign[i - 1])
        system"clear"
        display(@board.grid)
        puts "Player #{curr_player.name} is the winner"
        break
      elsif checktie(@board.grid)
        system"clear"
        display(@board.grid)
        puts "No winner this time"
        break
      else
        i == 1 ? i = 2 : i = 1  
      end
=end
    end
  end
end
board = Board.new
player1 = Player.new(board)
player2 = Player.new(board)
game_starter = Game.new(board,player1,player2)
game_starter.turn

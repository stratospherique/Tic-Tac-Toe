load 'player-board.rb'
load 'usr-int.rb'
load 'rules.rb'

class Game
  attr_accessor :board
  include UsrInterface
  include GameRules
  def initialize(board, player1, player2 )
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def turn
    puts 'Player 1, What\'s your name?'
    @player1.name = request_name
    puts 'Player 2, Whant\'s your name?'
    @player2.name = request_name
    i = 1
    sign=["X","O"]
    loop do
      curr_player = i == 1 ? @player1 : @player2

      system"clear"
      display(@board.grid) 

      move = request_move(@board.grid, curr_player.order)
      
      @board.placement(move, curr_player.order) # << board
      if checkwin(@board.grid, sign[i - 1])
        puts "Player #{curr_player.name} is the winner"
        break
      elsif checktie(@board.grid)
        puts "No winner this time"
        break
      else
        i == 1 ? i = 2 : i = 1  
      end

    end
  end
end
player1=Player.new
player2=Player.new
board=Board.new
game_starter=Game.new(board,player1,player2)
game_starter.turn
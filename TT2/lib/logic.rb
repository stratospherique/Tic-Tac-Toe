class Game
  attr_accessor :board

  def initialize(board, player1, player2 )
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def turn 
      @player1.name=request_name
      @player2.name=request_name
      i = 1
      sign=["X","O"]
    loop do
      curr_player= i==1 ? @player1 : @player2
      display(@board)     # <<< user int
      move=requestMove(@board,curr_player.order)     # <<< user int
      @board.placement(move,curr_player.order) # << board
      if checkwin(@board,sign[i-1])
        puts "Player #{curr_player.name} is the winner"
        break
      elsif checktie(@board)
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
class Game
  attr_accessor :board

  def initialize(board, player1, player2 )
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def turn 
      i = 1
    loop do
      display     # <<< user int
      begin
      move=requestMove     # <<< user int
      end
      check_valid # << board
      placement # << board
      checkwin  # << rules
      checktie   # << rules
      i == 1 ? i = 2 : i = 1
    end
  end
end
player1=Player.new
player2=Player.new
board=Board.new
game_starter=Game.new(board,player1,player2)
game_starter.turn
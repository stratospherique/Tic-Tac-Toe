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
      setmove     # <<< user int
      check_valid # << rules
      placement # << rules
      checkwin  # << rules
      checktie   # << rules
      i == 1 ? i = 2 : i = 1
    end
  end
end
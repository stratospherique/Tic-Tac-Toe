class Game 
  attr_accessor :real_grid, turn
  def initialize
  end

  def check_winner(board)
    for i in (1..5)
      next if i % 2 == 0
      for j in (1..5)
        @real_grid[i - 1][j - 1] = board[i][j] if j % 2 != 0
        end
      end
    end
  end
  return "player 1 wins!!" if horizontal(@real_grid, "X") 
  end 

  def horizontal(real, str)
    if real[0].all? str || real[1].all? str || real[2].all? str
  end





end
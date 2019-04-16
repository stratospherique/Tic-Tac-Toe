class Game 
  attr_accessor :real_grid, turn
  def initialize
  end

  def check_winner(board)
    for i in (1..5)
      next if i%2==0
      for j in (1..5)
       @real_grid[i-1][j-1]=board[i][j] if j%2!=0
      end
    end
    
  end
end
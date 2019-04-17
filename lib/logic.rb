class Game
  attr_accessor :real_grid
  def initialize()
    @real_grid = Array.new(3, "") { Array.new(3, "") }
  end

  def check_winner(board)
    for i in (1..5)
      next if i % 2 == 0
      for j in (1..5)
        @real_grid[i - 1][j - 1] = board[i][j] if j % 2 != 0
      end
    end   
    return "player 1 wins!!" if horizontal(@real_grid, "X") || vertical(@real_grid,"X") || diagonal(@real_grid,"X")
    return "player 2 wins!!" if horizontal(@real_grid, "O") || vertical(@real_grid,"O") || diagonal(@real_grid,"O")
    return 'next player turn' if filled()
    return "draw"
  end


  def cell_taken?(user_inpt)
    p @real_grid
    temp_grid = @real_grid.flatten
    uses = "XO"
    if uses.include?(temp_grid[user_inpt-1])
      return false
    else 
      return true 
    end
  end


  private 
  def horizontal(real, str)
    return false if !(real[0].all? str) || !(real[1].all? str) || !(real[2].all? str)
  end

  def vertical(real, str)
    for j in (0..2)
      for i in (0...2)
        if real[i][j]!=real[i+1][j] && real[i][j]==str
          return false
        end
      end
    end
    true
  end

  def diagonal(real, str)
    res=true
    for i in (0...2)
      return false if (real[i][i] != real[i + 1][i + 1]) && real[i][i] = str
      return false if (real[2 - i][i] != real[2 - i + 1][i + 1]) && real[i][i] = str
    end
    
  end

  def filled()
    temp_grid = @real_grid.flatten
    temp_grid.any?(Integers)
  end

  
end
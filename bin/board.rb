class Board
  attr_reader :grid

  def initialize()
    @grid = (1..9).to_a
  end

  def placement(move, i)
    @grid[move - 1] = "O" if i == 2 
    @grid[move - 1] = "X" if i == 1
  end
end

class Game
  attr_accessor :real_grid
  def initialize()
    @real_grid = Array.new(3, 0) { Array.new(3, 0) }
    p @real_grid[0][1]
    k = 1
    3.times do |i|
      3.times do |j|
        @real_grid[i][j] = k.to_s
        k += 1
      end
    end
  end

  def check_winner(board)
    get_realG(board)
    return 1 if horizontal(@real_grid, "X") || vertical(@real_grid,"X") || diagonal(@real_grid,"X")
    return 2 if horizontal(@real_grid, "O") || vertical(@real_grid,"O") || diagonal(@real_grid,"O")
    return -1 if filled()
    return 0
  end


  def cell_taken?(user_inpt)
    temp_grid = @real_grid.flatten
    uses = "XO"
    if uses.include?(temp_grid[user_inpt - 1])
      return true
    else 
      return false 
    end
  end

  def get_realG(board)
    r = 0
    c = 0
    1.upto(5) do |i|
      next if i % 2 == 0
      1.upto(5) do |j|
        if j % 2 != 0
          if board[i][j] != " "
            @real_grid[r][c] = board[i][j]
          end
          c += 1
        end
      end
      r += 1
      c = 0
    end
  end

  private 
  def horizontal(real, str)
    if real[0].all?(str) || real[1].all?(str) || real[2].all?(str)
      true
    else
      false
    end
  end

  def vertical(real, str)
    check = []
    res = true
    for j in (0..2)
      for i in (0...2)
        if real[i][j] == real[i + 1][j] && real[i][j] == str
          res = true
        else
          res = false
          break
        end
      end
      check << res
    end
    check.any?(true)
  end

  def diagonal(real, str)
    res = true
    check = []
    for i in (0...2)
      if (real[i][i] == real[i + 1][i + 1]) && real[i][i] == str
        res = true
      else
        res = false
        break
      end
    end
    check << res
    for i in (0...2)
      if (real[2 - i][i] == real[2 - i - 1][i + 1]) && real[2 - i][i] == str
        res = true
      else
        res = false
        break
      end
    end
    check << res
    check.any?(true)
  end

  def filled()
    temp_grid = @real_grid.flatten
    temp_grid.any?{ |x| (1..9).include?(x.to_i) }
  end
end

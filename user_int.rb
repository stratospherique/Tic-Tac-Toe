class UserInteface
  attr_accessor :player1 , :player2, :grid

  def initialize()
    @grid=Array.new(7,'*')
    for i in (0...@grid.length)
      @grid[i]=Array.new(7,'*')
    end
  end

  def execute
    puts "the name of the player 1 ="
    @player1 = gets.chomp
    puts "the name of the player 2 ="
    @player2 = gets.chomp
    display(@grid)
  end

  def display(grid)
    for i in (0...7)
      for j in (0...7)
        print grid[i][j]+" "
      end
      print "\n"
    end
  end
end 

game=UserInteface.new
game.execute
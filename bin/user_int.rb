class UserInteface
  attr_accessor :player1 , :player2, :grid

  def initialize()
    @grid=Array.new(7,'*')
    for i in (0...@grid.length)
      @grid[i] = Array.new(7,'*')
    end
    for i in (1...@grid.length - 1)
      next if i % 2 == 0
      for j in (1...@grid[i].length)
        @grid[i][j] = " "  if j % 2 != 0          
      end
    end
    @game=Game.new
  end  

  def execute
    puts "the name of the player 1 ="
    @player1 = gets.chomp
    puts "the name of the player 2 ="
    @player2 = gets.chomp
    display(@grid)
    i=2
    loop do 
      if i==2
        i=1 
      else i=2
      end
      puts "player #{i} what's your next move : "


      if @game.check_winner(@grid)=="player"
        puts 
        break
        if 

    end
    
  end

  def display(grid)
    for i in (0...7)
      for j in (0...7)
        print grid[i][j] + " "
      end
      print "\n"
    end
  end
end 

game=UserInteface.new
game.execute
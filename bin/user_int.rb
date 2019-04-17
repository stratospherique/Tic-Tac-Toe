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
    i==2
    while true 
    loop do
      display(@grid)
        if i==2
          i=1
        else
          i=2
        end
        begin 
          puts "player #{i} what's your next move : "
          begin
            user_inpt = gets.chomp.to_i
          rescue
            puts "please put a number between 1 and 9"
          else
            raise "cell #{user_inpt} is taken pick another one"if cell_taken?(user_inpt)
          end
        rescue StandardError=>e
          puts e
          retry
        else
          @grid[user_inpt - 1] = "X" if i==1
          @grid[user_inpt - 1] = "O" if i==2
        end
      
      
      if @game.check_winner(@grid)=="player 1"
        puts "player 1 wins" 
        break
      elsif @game.check_winner(@grid)=="player 2"
        puts "player 2 wins" 
        break
      elsif @game.check_winner(@grid)=="draw"
        puts "No one has won the Game" 
        break
      else
        puts "Game ON !!"
      end
    end
    puts "Game is Finished"
    puts "do wanna rematch"
    break if gets.chomp="N"
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
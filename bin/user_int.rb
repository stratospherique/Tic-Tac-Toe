load('../lib/game-logic.rb')
class UserInteface
  attr_accessor :player1 , :player2, :grid
  @@add = {
    1 => "11",
    2 => "13",
    3 => "15",
    4 => "31",
    5 => "33",
    6 => "35",
    7 => "51",
    8 => "53",
    9 => "55"
  }

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
    rematch = false
    while rematch 
      rematch = true
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
            puts "please enter a number between 1 and 9"
            retry
          else
            raise "cell #{user_inpt} is taken pick another one" if cell_taken?(user_inpt) || !(1..9).include?(user_inpt)
          end
        rescue StandardError => e
          puts e
          retry
        else
          position = @@add[user_inpt]
          @grid[position[0].to_i][position[1].to_i] = "X" if i == 1
          @grid[position[0].to_i][position[1].to_i] = "O" if i == 2
        end
      
      
      if @game.check_winner(@grid)=="player 1"
        puts "player 1 wins" 
        break
      elsif @game.check_winner(@grid)=="player 2"
        puts "player 2 wins" 
        break
      elsif @game.check_winner(@grid)=="draw"
        puts "No one has won the Game. It's a draw!!!!" 
        break
      else
        puts "Game ON !!"
      end
    end
    puts "Game is Finished"
    puts "Do you want a rematch Y/N"
    rematch = false if gets.chomp="N"
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
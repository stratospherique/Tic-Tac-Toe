module UsrInterface
  def display(board)
    print "┏━━━━━━━━━━━┓\n┃ #{board[0]} ┃ #{board[1]} ┃ #{board[2]} ┃\n┃━━━┃━━━┃━━━┃\n┃ #{board[3]} ┃ #{board[4]} ┃ #{board[5]} ┃\n┃━━━┃━━━┃━━━┃\n┃ #{board[6]} ┃ #{board[7]} ┃ #{board[8]} ┃\n┗━━━━━━━━━━━┛\n"
  end
  
  def request_move(board,i)
    begin 
      puts "@player #{i} what's your next move : "
      user_inpt = ""
        loop do
        user_inpt = gets.chomp.to_i
        break if (1..9).include?(user_inpt)
        puts "please enter a Number between 1 and 9"
        end
        raise "cell #{user_inpt} is taken pick another one" if board[user_inpt-1].is_a?(String) 
    rescue StandardError => e
      puts e
      retry
    else
      user_inpt
    end
  end

  def request_name(i)
    puts "Welcome Player #{i}, please state your name : "
    gets.chomp
  end

  def win(user)
    puts "#{user} congatulations!! \n Winner, Winner, Chicken Dinner"
  end

  def tie
    puts "This time, nobody came out Victorious!! \n We are all Losers!!"
  end

end

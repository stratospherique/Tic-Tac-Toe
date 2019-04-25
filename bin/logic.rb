load 'player.rb'
load '../lib/user-interface.rb'

class Game
  attr_accessor :board
  include UsrInterface
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def turn
    @player1.name = request_name(1)
    @player2.name = request_name(2)
    
    loop do
    break if @player1.play
    break if @player2.play
    end
  end
end

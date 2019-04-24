load 'board.rb'
load '../lib/user-interface.rb'
load 'rules.rb'

class Player
  attr_accessor :name, :order
  include UsrInterface
  include GameRules
  @@track = 0
  def initialize(board)
    @@track += 1
    @name = "Player #{@@track}"
    @order = @@track
    @board = board
    @xo = @order == 1 ? "X" : "O"
  end

  def play()
    
      system"clear"
      display(@board.grid)
      move = request_move(@board.grid, self.order)
      @board.placement(move, self.order) # << board
      if checkwin(@board.grid, @xo)
        system"clear"
        display(@board.grid)
        win(self.name)
        return true
      elsif checktie(@board.grid)
        system"clear"
        display(@board.grid)
        tie
        return true
      else
        return false
      end
  end
end
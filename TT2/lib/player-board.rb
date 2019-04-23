class Player
  attr_accessor :name,:order
  @@track=0
  def initialize()
    @@track += 1
    @name = "Player #{@@track}"
    @order = @@track
  end
end

class Board
  attr_accessor :grid
  def initialize()
    @grid=(1..9).to_a
  end
end
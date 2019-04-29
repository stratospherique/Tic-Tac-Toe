require './bin/board.rb'


describe Board do
  describe "#placement" do
    it "should place a symbol on particular position on the board" do 
      test = Board.new
      test.placement(3, 1)
      expect(test.grid).to match_array([1,2,"X",4,5,6,7,8,9])
    end
  end
end
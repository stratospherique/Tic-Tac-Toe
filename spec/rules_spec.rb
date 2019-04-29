require './bin/rules.rb'

include GameRules

describe GameRules do
  let(:board) { (1..9).to_a }
  describe "#checkwin" do
    it "Should return true if the first horizontal is filled with the same symbol" do
      expect(checkwin(["X", "X", "X", 4, 5, 6, 7, 8, 9], "X")).to eq(true)
    end

    it "Should return false if the first Horizontal is not filled with the same symbol" do
      expect(checkwin(["X", "O", "X", 4, 5, 6, 7, 8, 9], "X")).to eq(false)
    end

    it "Should return true if the second Horizontal row is filled with the same symbol" do
      expect(checkwin([1, 2, 3, "O", "O", "O", 7, 8, 9], "O")).to eq(true)
    end

    it "Should return false if the second Horizontal row is filled with the same symbol" do
      expect(checkwin([1, 2, 3, "O", "O", "X", 7, 8, 9], "O")).to eq(false)
    end

    it "Should return true if the third Horizontal row is filled with the same symbol" do
      expect(checkwin([1, 2, 3, 4, 5, 6, "X", "X", "X"], "X")).to eq(true)
    end

    it "Should return false if the third Horizontal row is filled with the same symbol" do
      expect(checkwin([1, 2, 3, 4, 5, 6, "O", "X", "X"], "X")).to eq(false)
    end

    it "Should return true if the first column is filled with the same symbol" do
      expect(checkwin(["X", 2, 3, "X", 5, 6, "X", 8, 9], "X")).to eq(true)
    end

    it "Should return false if the first column is not filled with the same symbol" do
      expect(checkwin(["X", 2, 3, "O", 5, 6, "X", 8, 9], "X")).to eq(false)
    end

    it "Should return true if the second column is filled with the same symbol" do
      expect(checkwin([1, "O", 3, 4, "O", 6, 7, "O", 9], "O")).to eq(true)
    end

    it "Should return false if the second column is not filled with the same symbol" do
      expect(checkwin([1, "O", 3, 4, "O", 6, 7, "X", 9], "O")).to eq(false)
    end

    it "Should return true if the third column is filled with the same symbol" do
      expect(checkwin([1, 2, "X", 4, 5, "X", 7, 8, "X"], "X")).to eq(true)
    end

    it "Should return false if the third column is not filled with the same symbol" do
      expect(checkwin([1, 2, "X", 4, 5, "X", 7, 8, "O"], "X")).to eq(false)
    end
  
    it "Should return true if the first diagonal is filled with the same symbol" do
      expect(checkwin(["X", 2, 3, 4, "X", 6, 7, 8, "X"], "X")).to eq(true)
    end

    it "Should return false if the first diagonal is not filled with the same symbol" do
      expect(checkwin(["X", 2, 3, 4, "O", 6, 7, 8, "X"], "X")).to eq(false)
    end

    it "Should return true if the second diagonal is filled with the same symbol" do
      expect(checkwin([1, 2, "O", 4, "O", 6, "O", 8, 9], "O")).to eq(true)
    end

    it "Should return false if the second diagonal is not filled with the same symbol" do
      expect(checkwin([1, 2, "O", 4, "O", 6, "X", 8, 9], "O")).to eq(false)
    end

    it "Should return false if no win condition is met and the board is filled" do
      expect(checkwin(["X", "O", "X", "O", "O", "X", "O", "X", "O"], "O")).to eq(false)
    end

  end

  describe "#checktie" do
    it "Should return true if no win condition is met and the game is a tie" do
      expect(checktie(["X", "O", "X", "O", "O", "X", "O", "X", "O"])).to be(true)
    end

    it "Should return false if a win condition is met and the board is filled" do
      expect(checktie(["X", "O", "X", "O", "O", "X", "O", "O", "X"])).to be(false)
    end
  end

end




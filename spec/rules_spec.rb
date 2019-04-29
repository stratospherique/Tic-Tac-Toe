require './bin/rules.rb'

include GameRules

describe GameRules do
  let(:board) { (1..9).to_a }
  describe "#checkwin" do
    it "Should return winner if the first horizontal is filled" do
      expect(checkwin(["X", "X", "X", 4, 5, 6, 7, 8, 9], "X")).to eq(true)
    end

    it "Should return false if the first horizontal is not filled with the same symbol" do
      expect(checkwin(["X", "O", "X", 4, 5, 6, 7, 8, 9], "X")).to eq(false)
    end
  
    it "Should return winner if the first diagonal is filled with the same symbol" do
      expect(checkwin(["X", "O", "X", 3, "X", 5, 6, 7, "X"], "X")).to eq(true)
    end

    it "Should return winner if the second diagonal is filled with the same symbol" do
      expect(checkwin(["O", "X", "O", 3, "O", 5, "O", 7, "X"], "O")).to eq(true)
    end

    it "Should return winner if the second Horizental row is filled with the same symbol" do
      expect(checkwin(["X", "O", "X", "O", "O", "O", "X", 8, 9], "O")).to eq(true)
    end

    it "Should return winner if the third Horizental row is filled with the same symbol" do
      expect(checkwin(["O", "O", "X", "O", "X", "O", "X", "X", "X"], "X")).to eq(true)
    end

    it "Should return winner if the first column is filled with the same symbol" do
      expect(checkwin(["X", "O", "X", "X", 5, 6, "X", 8, 9], "X")).to eq(true)
    end

    it "Should return winner if the second column is filled with the same symbol" do
      expect(checkwin(["X", "O", "X", "O", "O", 6, "X", "O", 9], "O")).to eq(true)
    end
  end
end




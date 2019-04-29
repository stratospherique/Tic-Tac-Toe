require "../bin/rules.rb"

describe "GameRules" do
  let(:board) { (1..9).to_a }
  
  describe "#checkwin" do
    it "Should return winner if the first horizontal is filled" do
      expect(checkwin(["X", "X", "X", 3, 4, 5, 6, 7, 8, 9], "X")).to eq(true)
    end
  end
end




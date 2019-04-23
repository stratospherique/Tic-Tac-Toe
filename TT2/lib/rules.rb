module GameRules
  
  
  def  checkwin(board,str)  # << rules
    horizontal1= Board[0..2].all?(str)
    horizontal2= Board[3..5].all?(str)
  end
  def  checktie   # << rules

  end
end
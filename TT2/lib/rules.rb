require
module GameRules
  
  
  def  checkwin(board,str)  # << rules
    hor1 = Board[0..2].all?(str)
    hor2 = Board[3..5].all?(str)
    hor3 = Board[6..8].all?(str)
    vert1 = [Board[0], Board[3], Board[6]].all?(str) 
    vert2 = [Board[1], Board[4], Board[7]].all?(str)
    vert3 = [Board[2], Board[5], Board[8]].all?(str)
    diag1 = [Board[0], Board[4], Board[8]].all?(str)
    diag2 = [Board[2], Board[4], Board[6]].all?(str)
    [hor1, hor2, hor3, vert1, vert2, vert3, diag1, diag2].any?(true)
    
  end

  def checktie(board)   # << rules
    board.all?(String)
  end
  


end
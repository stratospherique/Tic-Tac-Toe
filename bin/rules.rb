# Game Rule Module for the Tic Tac Toe command line Game
module GameRules
  def  checkwin(board,str)
    hor1 = board[0..2].all?(str)
    hor2 = board[3..5].all?(str)
    hor3 = board[6..8].all?(str)
    vert1 = [board[0], board[3], board[6]].all?(str)
    vert2 = [board[1], board[4], board[7]].all?(str)
    vert3 = [board[2], board[5], board[8]].all?(str)
    diag1 = [board[0], board[4], board[8]].all?(str)
    diag2 = [board[2], board[4], board[6]].all?(str)
    [hor1, hor2, hor3, vert1, vert2, vert3, diag1, diag2].any?(true)
  end

  def checktie(board)
    board.all?(String)
  end
end

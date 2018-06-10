class Knight
  def knight_move(board, position)
    board.each_index do |y|
      substring = board[y]
      substring.each_index do |x|
        if board[y][x] == position
          return move(board, y, x)
        end
      end
    end
  end

  def move(board, y, x)
    result =[]
    result << board[y+1][x-2] if y+1 <= 7 && x-2 >= 0
    result << board[y-1][x+2] if y-1 >= 0 && x+2 <= 7
    result << board[y+1][x+2] if y+1 <= 7 && x+2 <= 7
    result << board[y-1][x-2] if y-1 >= 0 && x-2 >= 0

    result << board[y+2][x+1] if y+2 <= 7 && x+1 <= 7
    result << board[y-2][x-1] if y-2 >= 0 && x-1 >= 0
    result << board[y+2][x-1] if y+2 <= 7 && x-1 >= 0
    result << board[y-2][x+1] if y-2 >= 0 && x+1 <= 7
    return result
  end
end

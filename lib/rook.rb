class Rook
  def rook_move(board, position)
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
    result = []
    n = 1
    while n <= 7
      result << board[y][x-n] if x-n >= 0
      result << board[y][x+n] if x+n <= 7
      result << board[y-n][x] if y-n >= 0
      result << board[y+n][x] if y+n <= 7
      n+=1
    end
    result
  end
end

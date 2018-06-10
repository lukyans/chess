class Board
  def initialize(position)
    @position = position
    @board = []
  end

  def chess_board
    count = 8
    board_numbers = [[*'a'..'h']] * 8
    board_numbers.each_index do |y|
      board_numbers[y].each_index do |x|
        @board << board_numbers[y][x] + count.to_s
      end
      count-=1
    end
    @board.each_slice(8).to_a if is_valid_position?
  end

  def is_valid_position?
    true if @board.include?(@position)
  end
end

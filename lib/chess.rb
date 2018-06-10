require_relative 'Board'
require_relative 'Knight'
require_relative 'Rook'
require_relative 'Queen'

class Chess
  attr_accessor :piece, :position
  def initialize(piece, position)
    @piece = piece
    @position = position
    @board = Board.new(position)
    @knight = Knight.new
    @rook = Rook.new
    @queen = Queen.new
  end

  def start_game
    board = @board.chess_board
    unless board.nil?
      if @piece.casecmp("knight") == 0
        p @knight.knight_move(board, @position)
      elsif @piece.casecmp("rook")  == 0
        p @rook.rook_move(board, @position)
      elsif @piece.casecmp("queen")  == 0
        p @queen.queen_move(board, @position)
      end
    end
  end
end

chess = Chess.new(ARGV[0], ARGV[1])
# chess = Chess.new("queen", "d2")
chess.start_game

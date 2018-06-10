require 'minitest/autorun'
require './lib/chess'
require './lib/rook'
require './lib/board'

class RookTest < Minitest::Test

  def setup
      @board = Board.new("d2")
      @rook = Rook.new
  end

  def test_it_exists
    assert_instance_of Rook, @rook
  end

  def test_it_returns_knight_move
    board = @board.chess_board
    position = "d2"
    move = ["c2", "e2", "d3", "d1", "b2",
            "f2", "d4", "a2", "g2", "d5",
            "h2", "d6", "d7", "d8"]
            
    assert_equal move, @rook.rook_move(board, position)
  end
end

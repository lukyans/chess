require 'minitest/autorun'
require './lib/chess'
require './lib/queen'
require './lib/board'

class QueenTest < Minitest::Test

  def setup
      @board = Board.new("d2")
      @queen = Queen.new
  end

  def test_it_exists
    assert_instance_of Queen, @queen
  end

  def test_it_returns_knight_move
    board = @board.chess_board
    position = "d2"
    move = ["c2", "e2", "d3", "d1", "c3",
            "e3", "c1", "e1", "b2", "f2",
            "d4", "b4", "f4", "a2", "g2",
            "d5", "a5", "g5", "h2", "d6",
            "h6", "d7", "d8"]
            
    assert_equal move, @queen.queen_move(board, position)
  end
end

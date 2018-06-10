require 'minitest/autorun'
require './lib/chess'
require './lib/knight'
require './lib/board'

class KnightTest < Minitest::Test

  def setup
      @board = Board.new("d2")
      @knight = Knight.new
  end

  def test_it_exists
    assert_instance_of Knight, @knight
  end

  def test_it_returns_knight_move
    board = @board.chess_board
    position = "d2"
    move = ["b1", "f1", "f3", "b3", "c4", "e4"]
    
    assert_equal move, @knight.knight_move(board, position)
  end
end

require 'minitest/autorun'
require './lib/chessercise'

class ChessTest < Minitest::Test

  def setup
      @chess = Chess.new("Knight", "d2")
  end

  def test_it_exists
    # chess = Chess.new("Knight", "d2")

    assert_instance_of Chess, @chess
  end

  def test_it_returns_piece
    assert_equal "Knight", @chess.piece
  end

  def test_it_returns_position
    assert_equal "d2", @chess.position
  end
end

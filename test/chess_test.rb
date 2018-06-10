require 'minitest/autorun'
require './lib/chess'

class ChessTest < Minitest::Test

  def setup
      @position = "d2"
      @piece = "Knight"
      @chess = Chess.new(@piece, @position)
  end

  def test_it_exists
    assert_instance_of Chess, @chess
  end

  def test_it_returns_piece
    assert_equal @piece, @chess.piece
  end

  def test_it_returns_position
    assert_equal @position, @chess.position
  end

  def test_it_starts_the_game
    result = ["b1", "f1", "f3", "b3", "c4", "e4"]

    assert_equal result, @chess.start_game
  end
end

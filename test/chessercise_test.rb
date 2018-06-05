require 'minitest/autorun'
require './lib/chessercise'

class ChessTest < Minitest::Test

  def test_it_exists
    chess = Chess.new("Knight", "d2")

    assert_instance_of Chess, chess
  end

end

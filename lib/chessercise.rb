class Chess
  attr_reader :piece, :position
  def initialize(piece, position)
    @piece = piece
    @position = position
  end

end

Chess.new(ARGV[0], ARGV[1])

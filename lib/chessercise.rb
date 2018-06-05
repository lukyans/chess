class Chess
  attr_reader :piece, :position
  def initialize(piece, position)
    @piece = piece
    @position = position
  end
end

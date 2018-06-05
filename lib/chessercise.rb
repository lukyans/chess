class Chess
  attr_reader :piece, :position
  def initialize(piece, position)
    @piece = piece
    @pposition = position
  end
end

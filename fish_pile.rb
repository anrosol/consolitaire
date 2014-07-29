require_relative 'pile'

class FishPile < Pile

  def initializ
    super
  end

  def shuffle
    @cards = @cards.shuffle
  end

end

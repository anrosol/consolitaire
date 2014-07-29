require_relative 'pile'

class FinalPile < Pile

  def initialize
    super
  end

  def allows?(card)
    if @cards.empty?
      return card.num == 1
    end
    
    return card.suit == @cards.last.suit && card.num == (@cards.last.num + 1)
  end

end

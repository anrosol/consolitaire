require_relative 'pile'

class FinalPile < Pile

  def initialize
    super
  end

  def allows?(card)
    if @cards.empty?
      return card.number == 1
    end
    
    return card.suit == @cards.last.suit && card.number == (@cards.last.number + 1)
  end

end


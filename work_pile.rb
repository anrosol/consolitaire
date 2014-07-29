require_relative 'pile'

class WorkPile < Pile

  def initialize
    super 
  end

  def allows?(card)
    if @cards.empty?
      return card.num == 13
    end

    return card.color == @cards.last.color && card.num == (@cards.last.num - 1)
  end

end

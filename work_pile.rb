require_relative 'pile'

class WorkPile < Pile

  def initialize
    super
  end

  def allows?(card)
    if @cards.empty?
      return card.number == 13
    end

    return card.color != @cards.last.color && card.number == (@cards.last.number - 1)
  end

end


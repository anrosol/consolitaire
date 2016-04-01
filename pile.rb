require_relative 'card'

class Pile 
  attr_reader :cards

  def initialize
    @cards = [] 
  end

  def length
    @cards.length
  end

  def clear
    @cards.clear
  end

  def empty?
    @cards.length == 0
  end

  def current_card
    @cards.empty? ? nil : @cards.last
  end

  def add(card)
    @cards.push(card)
  end

  def remove
    @cards.pop
  end
end


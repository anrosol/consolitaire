class Pile 
  attr_reader :cards

  def initialize
    @cards = [] 
  end

  def length
    @cards.length
  end

  def empty?
    @cards.length == 0
  end

  def peek
    @cards.last
  end

  def peek_and_tell
    @cards.empty? ? '' : @cards.last.tell
  end

  def give(card)
    @cards.push(card)
  end

  def take
    @cards.pop
  end
end

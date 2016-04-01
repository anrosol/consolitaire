require_relative 'pile'

class Deck < Pile

  def initialize
    super

    (1..13).each do |i|
      self.add(Card.new(i, 'S'))
      self.add(Card.new(i, 'H'))
      self.add(Card.new(i, 'D'))
      self.add(Card.new(i, 'C'))
    end
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def next_card
    unless empty?
      @cards.push(@cards.shift)
    end
  end

  def last_cards(number)
    result = []
    unless self.empty?
      number.times.reverse_each do |i|
        result.push(@cards[@cards.length - 2 - i])
      end
    end
    return result
  end
end

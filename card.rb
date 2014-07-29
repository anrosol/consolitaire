class Card
  attr_reader :num
  attr_reader :name 
  attr_reader :suit
  attr_reader :symbol
  attr_reader :color

  def initialize(num, name, suit, symbol, color)
    @num = num
    @name = name
    @suit = suit
    @symbol = symbol
    @color = color
  end

  def tell 
    return (@name || @num.to_s) + @symbol
  end

end

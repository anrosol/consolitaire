class Card
  attr_reader :num
  attr_reader :name 
  attr_reader :suit
  attr_reader :symbol
  attr_reader :red

  def initialize(num, name, suit, symbol, red)
    @num = num
    @name = name
    @suit = suit
    @symbol = symbol
    @red = red
  end

  def tell 
    "\e[3" + (red ? '1' : '0') + "m" + (@name || @num.to_s) + @symbol + "\e[0m"
  end

end

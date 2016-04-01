class Card
  @@numbers = {
    1 => 'A',
    2 => '2',
    3 => '3',
    4 => '4',
    5 => '5',
    6 => '6',
    7 => '7',
    8 => '8',
    9 => '9',
    10 => '10',
    11 => 'J',
    12 => 'Q',
    13 => 'K',
  }

  @@suits = {
    'S' => {
      'name' => 'Spade',
      'symbol' => "\u2660",
      'color' => 'black',
    },
    'H' => {
      'name' => 'Heart',
      'symbol' => "\u2665",
      'color' => 'red',
    },
    'D' => {
      'name' => 'Diamond',
      'symbol' => "\u2666",
      'color' => 'red',
    },
    'C' => {
      'name' => 'Club',
      'symbol' => "\u2663",
      'color' => 'black',
    },
  }

  attr_reader :number
  attr_reader :suit
  attr_reader :short_name
  attr_reader :name
  attr_reader :symbol
  attr_reader :color

  def initialize(number, suit)
    @number = number
    @suit = suit
    @short_name = @@numbers[number]
    @name = @@suits[suit]['name']
    @symbol = @@suits[suit]['symbol']
    @color = @@suits[suit]['color']
  end

end

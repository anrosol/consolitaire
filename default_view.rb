class DefaultView
  def initialize(game)
    @game = game
  end

  def display
    print [
     "\n",
      pile(@game.final_piles[0]),
      pile(@game.final_piles[1]),
      pile(@game.final_piles[2]),
      pile(@game.final_piles[3]),
      "    ",
      last_draw(@game.deck), 
      pile(@game.deck) + @game.deck.length.to_s, 
      "\n",
      "\n",
      pile(@game.work_piles[0]),
      pile(@game.work_piles[1]),
      pile(@game.work_piles[2]),
      pile(@game.work_piles[3]),
      pile(@game.work_piles[4]),
      pile(@game.work_piles[5]),
      pile(@game.work_piles[6]),
      "\n",
      get_card_stack(@game.work_piles[0]),
      get_card_stack(@game.work_piles[1]),
      get_card_stack(@game.work_piles[2]),
      get_card_stack(@game.work_piles[3]),
      get_card_stack(@game.work_piles[4]),
      get_card_stack(@game.work_piles[5]),
      get_card_stack(@game.work_piles[6]),
      "\n",
      "\n",
    ].join(' ')
  end

  def last_draw(pile)
    result  = ''

    cards = pile.last_cards(3)
    cards.each do |card| 
      result += self.get_card_face(card, true)
    end

    return result
  end

  def pile(pile)
    return self.get_card_face(pile.current_card)
  end

  def get_card_face(card, compressed = false)
    if card
      fore_color = 'red' == card.color ? '31' : '30'
      back_color = '47'
      if compressed
        text =  (card.number != 10 ? card.short_name :  "0") + card.symbol
      else
        text = " " + card.short_name + (card.number != 10 ? " " :  "") + card.symbol + " "
      end
    else
      fore_color = '30'
      back_color = '42'
      text = "     "
    end

    return "\e[" + fore_color + ";" + back_color + "m" + text + "\e[0m"
  end

  def get_card_stack(pile)
    return '  ' + pile.length.to_s + '  '
  end

end

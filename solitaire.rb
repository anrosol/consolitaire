require_relative 'deck'
require_relative 'work_pile'
require_relative 'final_pile'

class Solitaire
  attr_reader :deck
  attr_reader :work_piles
  attr_reader :final_piles

  def new_game
    @deck = Deck.new
    @deck.shuffle

    @work_piles = [] 
    (1..7).reverse_each do |i|
      work_pile = WorkPile.new
      i.times do
        work_pile.add(@deck.remove)
      end
      @work_piles.push(work_pile)
    end
    
    @final_piles = []
    (1..4).each do |i|
      @final_piles.push(FinalPile.new)
    end
  end

  def fish
    @deck.next_card
  end

  def move(params)
    if params[0] == 'd'
      if params[1] == 'w'
        deck_to_work(params[2].to_i)
      end

      if params[1] == 'f'
        deck_to_final(params[2].to_i)
      end
    end

    if params[0] == 'w'
      if params[2] == 'w'
        work_to_work(params[1].to_i, params[3].to_i)
      end

      if params[2] == 'f'
        work_to_final(params[1].to_i, params[3].to_i)
      end
    end

    if params[0] == 'f'
      if params[2] == 'w'
        final_to_work(params[1].to_i, params[3].to_i)
      end
    end
  end

  def deck_to_work(work_i)
    work_pile = @work_piles[work_i]
    if work_pile.allows?(@deck.current_card)
      work_pile.add(@deck.remove)
    end
  end

  def deck_to_final(final_i)
    final_pile = @final_piles[final_i]
    if final_pile.allows?(@deck.current_card)
      final_pile.add(@deck.remove)
    end
  end

  def work_to_final(work_i, final_i)
    work_pile = @work_piles[work_i]
    final_pile = @final_piles[final_i]
    if final_pile.allows?(work_pile.current_card)
      final_pile.add(work_pile.remove)
    end
  end

  def work_to_work(work_i, work_j)
    work_pile = @work_piles[work_i]
    work_pile2 = @work_piles[work_j]
    if work_pile2.allows?(work_pile.current_card)
      work_pile2.add(work_pile.remove)
    end
  end

  def final_to_work(final_i, work_i)
    final_pile = @final_piles[final_i]
    work_pile = @work_piles[work_i]
    if work_pile.allows?(final_pile.current_card)
      work_pile.add(final_pile.remove)
    end
  end
end

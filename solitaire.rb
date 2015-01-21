require_relative 'fish_pile'
require_relative 'discard_pile'
require_relative 'work_pile'
require_relative 'final_pile'

require_relative 'heart_card'
require_relative 'diamond_card'
require_relative 'spade_card'
require_relative 'club_card'

class Solitaire
  attr_reader :fish_pile
  attr_reader :discard_pile
  attr_reader :work_piles
  attr_reader :final_piles

  def new_game
    @fish_pile = FishPile.new
    (1..13).each do |i|
      name = {1 => 'A', 11 => 'J', 12 => 'Q', 13 => 'K'}

      @fish_pile.give(HeartCard.new(i, name[i]))
      @fish_pile.give(DiamondCard.new(i, name[i]))
      @fish_pile.give(SpadeCard.new(i, name[i]))
      @fish_pile.give(ClubCard.new(i, name[i]))
    end
    @fish_pile.shuffle

    @discard_pile = DiscardPile.new

    @work_piles = [] 
    (1..7).each do |i|
      work_pile = WorkPile.new
      i.times do
        work_pile.give(@fish_pile.take)
      end
      @work_piles.push(work_pile)
    end
    
    @final_piles = []
    (1..4).each do |i|
      @final_piles.push(FinalPile.new)
    end
  end

  def fish
    if @fish_pile.empty?
      @fish_pile.take_from_pile(@discard_pile)
    end
    @discard_pile.give(@fish_pile.take)
  end

  def move(from_pile, to_pile)
    piles = ['d', 'f1', 'f2', 'f3', 'f4', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6', 'w7'];
    #if (piles.has(from_pile))
  end

  def discard_pile_to_final_pile(i)
    if @final_piles[i].allows?(@discard_pile.peek)
      @final_piles[i].give(@discard_pile.take)
    end
  end

  def work_pile_to_final_pile(i, j)
    if @final_piles[i].allows?(@work_piles[j].peek)
      @final_piles[j].give(@work_piles[i].take)
    end
  end

  def discard_pile_to_work_pile(i)
    if @work_piles[i].allows?(@discard_pile.peek)
      @work_piles[i].give(@discard_pile.take)
    end
  end

end

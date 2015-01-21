class Interface

  def initialize(game)
    @game = game
  end

  def paint
    result = "\n"
    result += '??'  + "\t"
    result += @game.discard_pile.peek_and_tell + "\t"
    result += "\t"
    result += @game.final_piles[0].peek_and_tell + "\t"
    result += @game.final_piles[1].peek_and_tell + "\t"
    result += @game.final_piles[2].peek_and_tell + "\t"
    result += @game.final_piles[3].peek_and_tell + "\t"
    result += "\n"
    result += "\n"
    result += @game.work_piles[0].peek_and_tell + "\t"
    result += @game.work_piles[1].peek_and_tell + "\t"
    result += @game.work_piles[2].peek_and_tell + "\t"
    result += @game.work_piles[3].peek_and_tell + "\t"
    result += @game.work_piles[4].peek_and_tell + "\t"
    result += @game.work_piles[5].peek_and_tell + "\t"
    result += @game.work_piles[6].peek_and_tell + "\t"
    result += "\n"
    result += "\n"
    



puts result
return
    puts [
      'F',
      'D',
      '',
      'W1(' + @game.work_piles[0].length.to_s + ')',
      'W2(' + @game.work_piles[1].length.to_s + ')',
      'W3(' + @game.work_piles[2].length.to_s + ')',
      'W4(' + @game.work_piles[3].length.to_s + ')',
      'W5(' + @game.work_piles[4].length.to_s + ')',
      'W6(' + @game.work_piles[5].length.to_s + ')',
      'W7(' + @game.work_piles[6].length.to_s + ')',
      '',
      'F1',
      'F2',
      'F3',
      'F4',
    ].join("\t")

    puts [
      @game.fish_pile.peek_and_tell,
      @game.discard_pile.peek_and_tell,
      '',
      @game.work_piles[0].peek_and_tell,
      @game.work_piles[1].peek_and_tell,
      @game.work_piles[2].peek_and_tell,
      @game.work_piles[3].peek_and_tell,
      @game.work_piles[4].peek_and_tell,
      @game.work_piles[5].peek_and_tell,
      @game.work_piles[6].peek_and_tell,
      '',
      @game.final_piles[0].peek_and_tell,
      @game.final_piles[1].peek_and_tell,
      @game.final_piles[2].peek_and_tell,
      @game.final_piles[3].peek_and_tell
    ].join("\t")
  
    puts ''

  end

end

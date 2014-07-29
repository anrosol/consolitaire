require_relative 'solitaire'
require_relative 'interface'

puts 'UnSolitair v1.0'

sol = Solitaire.new
sol.new_game

int = Interface.new(sol)
int.paint

loop do
  print '> '

  input = gets.chomp
  command, *params = input.split(/\s/)

  case command
    when 'quit'
      abort
    when 'exit'
      abort
    when 'new'
      sol.new_game
    when 'f'
      sol.fish
    when 'mv'
      if 'd' == params[0] && 'f1' == params[1]
        sol.discard_pile_to_final_pile(1)
      end
    else
      puts 'Invalid command'
  end

  int.paint
end

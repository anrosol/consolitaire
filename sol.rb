require_relative 'solitaire'
require_relative 'interface'

solitaire  = Solitaire.new
interface  = Interface.new(solitaire)

solitaire.new_game

message = ''

loop do
  puts 'ConSolitaire v1.0'
  interface.paint

  print message + '> '
  message = ''

  input = gets.chomp
  command, *params = input.split(/\s/)

  case command
    when 'quit'
      abort
    when 'exit'
      abort
    when 'new'
      solitaire.new_game
    when 'f'
      solitaire.fish
    when 'mv'
      message = solitaire.move(params[0], params[1])
    else
      message = 'invalid comand'
  end

  print "\033[K"
  print "\033[1A\033[K" * 7

end

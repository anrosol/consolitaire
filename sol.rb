require_relative 'solitaire'
require_relative 'default_view'

solitaire  = Solitaire.new
view = DefaultView.new(solitaire)

solitaire.new_game

message = ''

loop do
  puts "ConSolitaire"

  view.display

  print message + '> '
  message = ''

  input = gets.chomp
  command, *params = input.split(/\s/)

  case command
    when 'h'
      print "(h)elp; (q)uit; (n)ew game; (f)ish; (m)ove"
    when 'q'
      abort
    when 'n'
      solitaire.new_game
    when 'f'
      solitaire.fish
    when 'm'
      solitaire.move(params)
    else
      message = 'invalid comand'
  end

  print "\033[K"
  print "\033[1A\033[K" * 8

end

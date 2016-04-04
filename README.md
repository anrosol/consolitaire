Consolitaire
============
Consolitaire is a command-line solitaire for the truly weird.

Requirements
============
* Ruby v2.0
 * Will probably work with earlier versions of Ruby

Usage
=====
ruby sol.rb

Commands
========
* (h)elp - Outputs a brief listing of commands
* (q)uit - Quits the game
* (n)ew game - Deals a new game
* (f)ish - Fishes from the deck pile
* (m)ove - Moves a card from one pile to another

Piles
=====
* d = Deck pile - top right corner
* w = Work pile - one of the bottom 7 piles indexed 0 - 6
* f = Final pile - one of the top left 4 piles indexed 0 - 3

Moving cards
============
To move a card, use the m command. Here are some examples
* m d w 6 - (m)ove card from (d)eck to (w)ork pile 6
* m w 1 f 3 - (m)ove card from (w)ork pile 1 to (f)inal pile 3
* m f 2 w 4 - (m)ove card from (f)inal pile 2 to (w)ork pile 4
* m w 1 w 0 - (m)ove card from (w)orki pile 1 to (w)ork pile 0


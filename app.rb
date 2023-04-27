require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
# reste à indiquer les require sans précision du chemin
require 'player'
require 'game'
require 'board'
require 'boardcase'
require 'show'


#On demande poliment le nom des deux joueurs :
system("clear")
puts "Bienvenue dans ce jeu du morpion !"

puts "Le principe est de faire une ligne de 3 symboles identiques."
puts "La sélection de la case à cocher se fait sur le principe du pavé numérique"
puts 
puts "----+---+----"
puts "| 7 | 8 | 9 |"
puts "----+---+----"
puts "| 4 | 5 | 6 |"
puts "----+---+----"
puts "| 1 | 2 | 3 |"
puts "----+---+----"
puts
puts "Par exemple, pour sélectionner la case au centre, il suffit de taper 5."
puts
puts "Quel est le nom du premier participant ?"
print "> "
player1 = gets.chomp.to_s
puts "Quel est le nom de son adversaire ?"
print "> "
player2 = gets.chomp.to_s
puts "Que le meilleur gagne !"

my_game = Game.new(player1, player2)
my_board = Board.new

while my_game.is_still_ongoing? == true
  my_board.drawboard
  my_game.menu
  my_game.menu_choice
  my_board.drawboard
end

my_game.restart?
  

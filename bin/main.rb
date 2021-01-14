
# !/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/board'

puts 'Welcome to Kene-Rose TIC-TAC-TOE game'
layout = Board.new

puts layout.display_board1
puts
player_x = Player.new('player1', 'X')
puts 'Enter player 1 name'
player_x.name = gets.chomp
puts "welcome #{player_x.name} you're player 1"
while player_x.name == ''
  puts 'Player name is required'
  player_x.name = gets.chomp
end
puts

player_o = Player.new('player2', 'O')
puts 'Enter player 2 name'
player_o.name = gets.chomp
puts "welcome #{player_o.name} you're player 2"
while player_o.name == '' || player_o.name == player_x.name
  puts 'Player name is required or invalid name'
  player_o.name = gets.chomp
end
puts

# game flow start
game_on = true
turn = true

while game_on
  if turn
    puts "#{player_x.name} choose a position "
  else
    puts "#{player_o.name} choose a position "
  end
  puts layout.display_board

  pos = gets.chomp
  # rubocop:disable Metrics/BlockNesting
  if layout.valid?(pos)
    case layout.free?(pos, layout.board)
    when true
      turn ? layout.move(pos, layout.board, player_x) : layout.move(pos, layout.board, player_o)
    when false
      puts "POSITION #{pos} TAKEN! Please, Try again."
      next
    end
  else
    puts " \n INVALID NUMBER! Please, Try again."
    next
    # rubocop:enable Metrics/BlockNesting
  end
  if layout.win?
    puts turn ? " \n #{player_x.name} Won! CONGRATULATIONS!!! \n " : " \n #{player_o.name} Won! CONGRATULATIONS!!! \n "
    break
  end
  if layout.draw
    puts " \n IT'S A DRAW! Game is over, but you can always return. \n "
    break
  end
  turn = !turn

end
puts layout.display_board
=======
puts 'Welcome to Kene-Rose Tic_Tac_Toe game'
puts

puts 'Enter your names below'
players = []
(0...2).each do |i|
  puts "Enter name of Player #{i + 1}"
  player = gets.chomp
  while player.empty?
    puts 'Name of player required '
    player = gets.chomp
  end
  players.push(player)
end
puts 'Player1 wil be assigned symbol x'
puts 'Player2 will be assigned symbol O'

puts 'Please enter square code to play your move. (For e.g. a1,b2,c3)'

puts ''
play = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]

puts '   1 2 3 '
puts '  -------'
puts "a |#{play[0][0]}|#{play[0][1]}|#{play[0][2]}|"
puts '  -------'
puts "b |#{play[1][0]}|#{play[1][1]}|#{play[1][2]}|"
puts '  -------'
puts "c |#{play[2][0]}|#{play[2][1]}|#{play[2][2]}|"
puts '  -------'
puts

puts 'Note: Game is over when all squares are filled thus a draw'
puts 'Round for Player1'
# symbol from player1 is displayed on the board and its gets updated
puts 'Round for Player2'
# symbol from player2 is displayed on the board and its gets updated
puts 'when one player has their symbol matching diagonally,vertically or horizontally '
puts 'then they are declared the winner'

# !/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/board'
require 'colorize'

puts 'Welcome to Kene-Rose TIC-TAC-TOE game'
sleep 1
layout = Board.new
puts
sleep 1
puts layout.display_board1
puts
sleep 1
player_x = Player.new('player1', 'X')
player_x.sign = 'X'.red
puts 'Enter player 1 name'
player_x.name = gets.chomp.red
puts "welcome #{player_x.name} you're player 1"
while player_x.name == ''
  puts 'Player name is required'
  player_x.name = gets.chomp
end
puts
sleep 1
player_o = Player.new('player2', 'O')
player_o.sign = 'O'.blue
puts 'Enter player 2 name'
player_o.name = gets.chomp.blue
puts "welcome #{player_o.name} you're player 2"
while player_o.name == '' || player_o.name == player_x.name
  puts 'Player name is required or invalid name'
  player_o.name = gets.chomp
end
puts

game_on = true
turn = true

while game_on
  if turn
    puts "#{player_x.name} choose a position "
  else
    puts "#{player_o.name} choose a position "
  end
  sleep 1
  puts
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
    puts layout.display_board
    break
  end
  if layout.draw
    puts " \n IT'S A DRAW! Game is over, but you can always return. \n "
    puts layout.display_board
    break
  end
  turn = !turn

end

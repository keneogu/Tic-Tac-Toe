# !/usr/bin/env ruby

require_relative '../lib/player'
require_relative './board'

  puts "Welcome to Kene-Rose TIC-TAC-TOE game"
  layout = Board.new

  puts layout.display_board1
  puts 
  player_x = Player.new("player1","X")
  puts 'Enter player 1 name'
  player_x.name = gets.chomp
  puts "welcome #{player_x.name} you're player 1"
  while player_x.name == ''
    puts 'Player name is required'
    player_x.name = gets.chomp
  end
  puts

  player_o = Player.new("player2","O")
  puts 'Enter player 2 name'
  player_o.name = gets.chomp
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
      puts layout.display_board
  else
  puts "#{player_o.name} choose a position "
      puts layout.display_board
  end

  
end
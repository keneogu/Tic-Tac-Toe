# !/usr/bin/env ruby

require_relative '../lib/player'

player_x = Player.new
player_x.sign = 'X'
puts 'Enter user X name'
player_x.name = gets.chomp
while player_x.name == ''
  puts 'Player name is required'
  player_x.name = gets.chomp
end

player_o = Player.new
player_o.sign = 'O'
puts 'Enter user O name'
player_o.name = gets.chomp
while player_o.name == '' || player_o.name == player_x.name
  puts 'Player name is required or invalid name'
  player_o.name = gets.chomp
end

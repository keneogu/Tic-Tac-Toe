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

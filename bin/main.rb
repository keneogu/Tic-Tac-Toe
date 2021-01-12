puts 'Kene-Rose Tic_Tac_Toe game'
puts

players = []
    (0...2).each do |i|
    puts "Enter name of Player #{i+1}"
    player=gets.chomp()
    i+=1
    players.push(player)
    while player.empty?
        puts  "Name of player required "
        player=gets.chomp() 
    end
end


play = [[" "," "," "],[" "," "," "],[" "," "," "]]
 
puts '   1 2 3 '
puts '  -------'
puts "a |#{play[0][0]}|#{play[0][1]}|#{play[0][2]}|"
puts '  -------'
puts "b |#{play[1][0]}|#{play[1][1]}|#{play[1][2]}|"
puts '  -------'
puts "c |#{play[2][0]}|#{play[2][1]}|#{play[2][2]}|"
puts '  -------'
puts


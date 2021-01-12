puts 'Kene-Rose Tic_Tac_Toe game'
puts

players = []

(0..1).each do |i|
  puts "add player #{i + 1}"
  players[i] = gets.chomp
  puts "welcome #{players[i]}"
end

layer = [" "," "," "," "," "," "," "," "," "]
 
puts " 1    2    3"
puts "|#{layer[0]}|  |#{layer[1]}|  |#{layer[2]}|"
puts
puts "|#{layer[3]}|  |#{layer[4]}|  |#{layer[5]}|"
puts
puts "|#{layer[6]}|  |#{layer[7]}|  |#{layer[8]}|"
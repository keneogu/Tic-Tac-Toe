puts 'Kene-Rose Tic_Tac_Toe game'
puts

players = []

def user_validity(username)
    puts "Enter username"
    username=gets.chomp()
    while username.empty?
        puts "Username required"
        username=gets.chomp()
    end
    username
end
p player1 =user_validity("x")
p player2 =user_validity("y")

layer = [" "," "," "," "," "," "," "," "," "]
 
puts " 1    2    3"
puts "|#{layer[0]}|  |#{layer[1]}|  |#{layer[2]}|"
puts
puts "|#{layer[3]}|  |#{layer[4]}|  |#{layer[5]}|"
puts
puts "|#{layer[6]}|  |#{layer[7]}|  |#{layer[8]}|"


class Board

	attr_accessor :board

  def initialize
  @board = [" "," "," "," "," "," "," "," "," "]
  @board1 = [1,2,3,4,5,6,7,8,9]
  end

  def display_board1
    puts 
    [" #{@board1[0]} | #{@board1[1]} | #{@board1[2]} ",
     '------------',
     " #{@board1[3]} | #{@board1[4]} | #{@board1[5]} ",
     '------------',
     " #{@board1[6]} | #{@board1[7]} | #{@board1[8]} "]
  end

  def display_board
    puts 
    [" #{@board[0]} | #{@board[1]} | #{@board[2]} ",
     '------------',
     " #{@board[3]} | #{@board[4]} | #{@board[5]} ",
     '------------',
     " #{@board[6]} | #{@board[7]} | #{@board[8]} "]
  end



end
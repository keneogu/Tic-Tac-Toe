class Board
  attr_accessor :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @board1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
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

  WINS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ].freeze

  def draw
    board.all? do |letter|
      if %w[X O].include?(letter)
        true
      else
        false
      end
    end
  end

  def valid?(pos)
    pos = pos.to_i
    if pos.between?(1, 9) && pos.is_a?(Integer)
      true
    else
      false
    end
  end

  def move(pos, arr, players)
    pos = pos.to_i - 1
    arr[pos] = players.sign
  end

  def free?(pos, arr)
    pos = pos.to_i - 1
    arr.each_with_index do |num, i|
      if i == pos && num == ' '
        return true
      elsif i == pos && num != ' '
        return false
      end
    end
  end

  def win?
    WINS.each do |i|
      win_combo = [board[i[0]], board[i[1]], board[i[2]]]
      # rubocop: disable Style/GuardClause
      if win_combo.all? { |x| x == 'O' }
        return true
      elsif win_combo.all? { |x| x == 'X' }
        return true
      end
    end
    false
  end
end

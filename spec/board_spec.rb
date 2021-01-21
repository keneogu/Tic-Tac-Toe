require 'spec_helper'
require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  let(:board) { Board.new }
  let(:player1) { Player.new('Kene', 'X') }
  let(:player2) { Player.new('Rose', 'O') }

  describe '#valid' do
    it 'checks for valid position' do
      expect(board.valid?(6)).to eql(true)
      expect(board.valid?(-1)).to eql(false)
      expect(board.valid?(1)).to eql(true)
      expect(board.valid?(0)).to eql(false)
    end
  end

  describe 'move' do
    let(:arr) { [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }
    it 'checks if it is players turn to make a move' do
      expect(board.move(1, arr, player1)).to eql(player1.sign)
      expect(board.move(2, arr, player2)).to eql(player2.sign)
    end
  end

  describe '#free?' do
    let(:arr1) { [' ', 'X', ' ', ' ', ' ', 'O', ' ', ' ', ' '] }
    it 'checks if there is a free position' do
      expect(board.free?(2, arr1)).to eql(false)
      expect(board.free?(1, arr1)).to eql(true)
      expect(board.free?(6, arr1)).to eql(false)
    end
  end

  describe '#win?' do
    it 'returns true if a player won' do
      board.board = [' ', ' ', ' ', 'X', 'X', 'X', ' ', ' ', ' ']
      expect(board.win?).to eql(true)
    end

    it 'returns false if the game is still on and no has won yet' do
      board.board = [' ', ' ', ' ', 'X', 'O', 'X', ' ', ' ', ' ']
      expect(board.win?).to eql(false)
    end
  end

    describe '#draw' do
	  it 'checks if its true when th board is full' do
		board.board = ['X', 'O', 'X', 'X', 'O', 'X', 'O', 'X', 'O']
        expect(board.draw).to eql(true)
	  end
	  
	  it 'returns false if the board is not full' do
		board.board = [' ', ' ', ' ', 'X', '0', 'X', ' ', ' ', ' ']
        expect(board.draw).to eql(false)
      end
    end

end

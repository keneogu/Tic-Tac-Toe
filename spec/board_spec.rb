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
    it 'updates board base on the position active player picks' do
      board.board = [' ', ' ', ' ', 'X', 'X', 'X', ' ', ' ', ' ']
      expect(board.win?).to eql(true)
    end
  end
  #   describe '#win?' do
  #     let(:arr2) { ['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' '] }
  # 	it 'checks if a player won the game' do
  # 	  expect(board.move(1, arr2, player1))
  # 	  expect(board.move(2, arr2, player1))
  # 	  expect(board.move(3, arr2, player1))
  #       expect(board.win?).to be true
  #     end
  #   end

  #   describe '#draw' do
  #     let(:firstarr) { %w[X O X O O X X O X] }
  #     it 'checks if its true when th board is full' do
  #       expect(board.draw(firstarr)).to eql(true)
  #     end
  #     let(:secondarr) { ['X', 'O', 'X', ' ', 'O', 'X', 'X', ' ', 'X'] }
  #     it 'returns false if the board is not full' do
  #       expect(board.draw(secondarr)).to eql(nil)
  #     end
  #   end
end

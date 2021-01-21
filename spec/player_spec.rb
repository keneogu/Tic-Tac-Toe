require 'spec_helper'
require_relative '../lib/player'

describe Player do
  let(:player1) { Player.new('Kene', 'X') }
  let(:player2) { Player.new('Rose', 'O') }

  describe '#initialize' do
    it 'creates the player1 name and sign' do
      expect(player1.name).to eq('Kene')
      expect(player1.sign).to eq('X')
    end

    it 'creates the player2 name and sign' do
      expect(player2.name).to eq('Rose')
      expect(player2.sign).to eq('O')
    end
  end
end

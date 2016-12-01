require 'spec_helper'
require 'game'


describe Game do
  subject(:game) { Game.new('Noughts and Crosses') }

    describe 'game name' do
      it 'returns name of game' do
        expect(game.game_name).to eq('Noughts and Crosses')
      end
    end

    describe 'can play a game of o\'s and x\'s' do
      it 'allows player to enter a o or a x' do
        expect(game.play('o')).to eq('o')
      end
    end
end

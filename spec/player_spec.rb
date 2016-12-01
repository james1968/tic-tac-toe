require 'spec_helper'
require 'player'

describe Player do
  subject(:player) { Player.new('X') }

  describe 'name' do
    it 'returns Crosses name' do
      expect(player.name).to eq('X')
    end
  end
end

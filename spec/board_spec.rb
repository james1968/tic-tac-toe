require 'spec_helper'
require 'board'


describe Board do

    context '#initialize' do
      it 'initializes the board with a grid do' do
      expect { Board.new(grid: 'grid') }.to_not raise_error
    end
  end


end

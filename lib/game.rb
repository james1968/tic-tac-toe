require_relative 'player'
require_relative 'board'

class Game

  WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [7,5,3]]

  attr_reader :board, :player

  def initialize
    @board = Array.new(10)
    (1..9).each { |i| @board[1] }
    @player_x = Player.new('x')
    @player_o = Player.new('o')
    @players = [@player_x, @player_o]
  end



  def play(o_or_x)
    @o_or_x = o_or_x
  end


  def players
    @players
  end

  def add_player(player)
    @players << Player.new(player)
    return @players.last
  end

  def board
    @board
  end

  def moves
    @board
  end

  def update_board(moves)
    if @board.include?(move[1])
      @board[move[1]] = move[0]
    end
  end

  def is_winner?(player)
    WINNING_LINES.any? do |victory|
      victory.all? { |position| @board[position] == player.symbol }
    end
  end

  def open_positions?
    @board.each do |x|
      (1..9).each do |y|
        return true if x == y
      end
    end
  end

  def is_draw?
    (self.open_positions? != true) && @players.none? { |winner| is_winner?(winner) }
  end

end

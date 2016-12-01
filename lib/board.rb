class Board
  attr_reader :board

  WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [7,5,3]]

  def initialize(input = {})
    @board = Array.new(10)
    (1..9).each { |i| @board[1] }
  end

  def display_board
    puts " #{ @board[1] } | #{ @board[2] } | #{ @board[3] }"
    puts "---+---+---"
    puts " #{ @board[4] } | #{ @board[5] } | #{ @board[6] }"
    puts "---+---+---"
    puts " #{ @board[7] } | #{ @board[8] } | #{ @board[9] }"
  end

  def instructions
    puts "Please enter 'position' and 'x or o'"

    puts " 1 | 2 | 3 "
    puts "---+---+---"
    puts " 4 | 5 | 6 "
    puts "---+---+---"
    puts " 7 | 8 | 9 "

    puts "as 'board.update(position, value)'"

  end

  def update(position, value)
    @board.insert(position, value)
    display_board
    puts 'Change Player'
  end

end

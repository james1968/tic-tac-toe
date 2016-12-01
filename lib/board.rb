class Board
  attr_reader :board



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
    if @board == [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
      puts 'Change Player'
    elsif @board[4..6].uniq.length == 1
      puts "#{@board[1]} wins"
    elsif @board[4..6].uniq.length == 1
      puts "#{@board[4]} wins"
    elsif @board[7..9].uniq.length == 1
      puts "#{@board[7]} wins"
    elsif @board[1,4,7].uniq.length == 1
      puts "#{@board[7]} wins"
    elsif @board[2,5,8].uniq.length == 1
      puts "#{@board[2]} wins"
    else
    puts 'Change Player'
    end
  end

end

class TicTacToe
  def initialize()
    @board = Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
    [0,1,2], # top row
    [3,4,5], # middle row
    [6,7,8], # bottom row
    [0,3,6], # left column
    [1,4,7], # middle column
    [2,5,8], # right column
    [0,4,8], # back diagonal
    [2,4,6]  # forward diagonal
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    index = input.to_i - 1
  end
  
  def move(index, token = "X")
    @board[index] = token
  end
  
  def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
      true
    else
      false
    end
  end
  
  def valid_move?(position)
    if !position_taken?(position) && position.between?(0,8)
      true
    else
      false
    end
  end
  
  def turn
    puts "Enter a valid position(1-9): "
    input = gets.strip
    index = input_to_index(input)
    
  end
  
  def turn_count
    count = 0
    @board.each do |element|
      if element == "X" || element == "O"
        count += 1
      end
    end
  end
  
  def current_player
    count = turn_count
    if count.even?
      token = "X"
    else 
      token = "O"
    end
  end
end 
class Board
  def initialize
    @board = Array.new(3) { Array.new(3) }
    @is_won = false
    @turn = "X" # Player markers are "X" and "O"
  end
  attr_accessor :board
  def place_input
    valid_input = false
    print("#{@turn}'s turn. Enter coordinates to place #{@turn}: ")
    until valid_input
      input = gets.chomp
      if input[0] == "A" || input[0] == "a"
        column = 0
      elsif input[0] == "B" || input[0] == "b"
        column = 1
      elsif input[0] == "C" || input[0] == "c"
        column = 2
      else
        column = nil
      end
      if input[1] == "1"
        row = 0
      elsif input[1] == "2"
        row = 1
      elsif input[1] == "3"
        row = 2
      else
        row = nil
      end
      if input.length != 2 || column == nil || row == nil #input is not b1, etc
        print("#{input} is not a valid input. Enter coordinates to place #{turn}: ")
      elsif board[row][column] != nil
        print("#{input} is not an empty square. Enter coordinates to place #{turn}:")
      else
        valid_input = true
      end
    end
    board[row][column] = @turn
    @turn = @turn == "X" ? "O" : "X"
  end
end
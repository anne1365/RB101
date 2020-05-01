=begin
TTT Flow
  1.  Display initial 3x3 board
  2.  Ask the user to mark a square
  3.  Computer marks a square
  4.  Display updated board state
  5.  If there is a winner, display the winner
  6.  If the board is full, display tie
  7.  If there is no winner or tie, go to #2
  8.  Play again?
  9.  If yes, go to #1
  10. Goodbye!
=end

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  puts ""
  puts "     |     |"
  puts " #{brd[1]}   |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----------------"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----------------"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = ' ' }
  new_board
end

def player_places_piece(brd)
  prompt "Choose a square (1-9): "
  square = gets.chomp.to_i
  
  brd[square] = 'X'
end


board = initialize_board
display_board(board)

player_places_piece(board)
puts board.inspect
display_board(board)



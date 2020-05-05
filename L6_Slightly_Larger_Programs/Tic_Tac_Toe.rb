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

JOINOR IDEAS
  - method accepts (potentially) three values - array (req.),
    punctuation (opt.),    and joining word (opt.) -  optional
    vals will need default vals (provided in examples - ', '
    and 'or' resp.)
  - Does join method have additional parameters it can take to
    increase method's versatility?
  - If not, could the array be split to allow two seperate
    join's?
=end

require 'pry'
# ---------------------------->>>  CONSTANTS  <<<----------------------------
PLAYER = 'Player'
COMPUTER = 'Computer'
WHO_GOES_FIRST = [PLAYER, COMPUTER]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diags

# ---------------------------->>>   METHODS   <<<----------------------------
def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, punc = ', ', word = 'or')
  if arr.count > 1
    last_el = arr.delete(arr.last)
    "#{arr.join(punc)}#{punc}#{word} #{last_el}"
  else
    arr[0]
  end
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
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
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |n| brd[n] == INITIAL_MARKER }
end

def set_who_goes_first
  prompt("Who's going first?\n1 - I am!\n2 - Computer\n3 - You pick!")
  answer = gets.chomp.to_i

  case answer
  when 1 then PLAYER
  when 2 then COMPUTER
  when 3 then WHO_GOES_FIRST.sample
  end
end

def alternate_player(current_player)
  if current_player == COMPUTER
    PLAYER
  elsif current_player == PLAYER
    COMPUTER
  end
end

def place_piece!(brd, current_player)
  if current_player == PLAYER
    player_places_piece(brd)
  elsif current_player == COMPUTER
    computer_places_piece(brd)
  end
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square (OPTIONS: #{joinor(empty_squares(brd))}): "
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "ERROR: That's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_offensive_move(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(PLAYER_MARKER) == 0
      return line[brd.values_at(*line).index(' ')]
    end
  end
  nil
end

def computer_defensive_move(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) == 0
      return line[brd.values_at(*line).index(' ')]
    end
  end
  nil
end

def computer_places_piece(brd)
  square = if !!computer_offensive_move(brd)
             computer_offensive_move(brd)
           elsif !!computer_defensive_move(brd)
             computer_defensive_move(brd)
           elsif brd[5] == ' '
             5
           else
             empty_squares(brd).sample
           end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).all?(PLAYER_MARKER)
      return PLAYER
    elsif brd.values_at(*line).all?(COMPUTER_MARKER)
      return COMPUTER
    end
  end
  nil
end

def display_scoreboard(wins, losses)
  prompt("PLAYER: #{wins} | COMPUTER: #{losses}")
end

def determine_overall_winner(wins, losses)
  display_scoreboard(wins, losses)

  if wins == 5 && losses == 5
    'tie'
  elsif wins >= 5
    PLAYER
  elsif losses >= 5
    COMPUTER
  end
end

def display_overall_winner(winner)
  case winner
  when 'tie'    then prompt "You're both winners - it's a tie!"
  when PLAYER   then prompt "Congratulations! You've won the match!"
  when COMPUTER then prompt "Computer won the match!"
  end
end

# ------------------------->>> MAIN GAME LOGIC <<<-------------------------
wins = 0
losses = 0
current_player = ''
loop do
  board = initialize_board
  current_player = set_who_goes_first
  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    winner = detect_winner(board)
    wins += 1 if winner == PLAYER
    losses += 1 if winner == COMPUTER
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  display_overall_winner(determine_overall_winner(wins, losses))
  break if wins >= 5 || losses >= 5

  prompt("Would you like to play again? (y/n)")
  answer = gets.chomp.downcase
  break if answer == 'n'
end

prompt "Thanks for playing Tic-Tac-Toe! Goodbye!"

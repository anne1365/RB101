require 'yaml'

# ----------------------------->>>  CONSTANTS  <<<-----------------------------
TEXT = YAML.load_file('twenty_one_config.yml')
PLAYER = 'YOUR'      # addressing player
DEALER = "DEALER'S"  # referring to dealer

HIT = 'H'
STAY = 'S'

WINNING_NUMBER = 21
DEALER_STAY_AT = 17

SUITS = %w(D H S C)  # diamonds, hearts, spades, and clubs
VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
FACE_CARD = %w(Jack Queen King)

# ----------------------------->>>   METHODS   <<<-----------------------------
def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def display_player_hand(cards)
  numbers = cards.map { |card| [card[1]] }
  prompt("#{PLAYER} HAND:  #{numbers.join(', ')}\n")
end

def display_dealer_hand(cards)
  prompt("#{DEALER} HAND: #{cards[0][1]}, unknown\n\n")
end

def hit(deck, cards)
  cards << deck.shift
end

def get_total(cards)
  sum = 0
  numbers = cards.map { |el| el[1] }
  numbers.each do |n|
    if n == 'Ace'
      sum = sum <= 10 ? sum + 11 : sum + 1
    end

    FACE_CARD.include?(n) ? (sum += 10) : (sum += n.to_i)
  end
  sum
end

def busted?(total)
  total > WINNING_NUMBER
end

def players_turn
  move = ''

  loop do
    puts TEXT[:hit_or_stay]
    move = gets.chomp.upcase
    if move == STAY || move == HIT
      break
    else
      prompt(TEXT[:invalid_entry])
    end
  end
  move
end

def update_hand(deck, hand)
  hit(deck, hand)
end

def display_total(person, total)
  prompt("#{person} TOTAL: #{total}\n\n")
end

def player_won?(total_one, total_two)
  total_one > total_two
end

def round_over?(total)
  total > WINNING_NUMBER || total == WINNING_NUMBER
end

def display_round_winner(bool)
  puts bool ? TEXT[:player_won] : TEXT[:dealer_won]
end

def display_scoreboard(wins, losses)
  puts("                 PLAYER: #{wins} | DEALER: #{losses}        \n\n")
end

def determine_overall_winner(wins, losses)
  if wins == 5 && losses == 5
    'tie'
  elsif wins >= 5
    PLAYER
  elsif losses >= 5
    DEALER
  end
end

def display_overall_winner(wins, losses)
  winner = determine_overall_winner(wins, losses)

  case winner
  when 'tie'    then puts TEXT[:tied_match]
  when PLAYER   then puts TEXT[:player_won_match]
  when DEALER   then puts TEXT[:dealer_won_match]
  end
end

def next_round
  prompt("Press any key to continue: ")
  gets.chomp
end

def play_again?
  puts TEXT[:play_again]
  gets.chomp.upcase == 'Y'
end

def clean_exit
  prompt("Press any key to exit: ")
  gets.chomp
  system 'cls'
end

# ----------------------------->>> GAME  LOGIC <<<-----------------------------
loop do
  wins = 0
  losses = 0

  loop do
    break if losses >= 5 || wins >= 5

    system 'cls'
    puts TEXT[:welcome]
    display_scoreboard(wins, losses)

    # INITIALIZE VARIABLES + DEAL HANDS
    deck = initialize_deck
    player_hand = deck.shift(2)
    dealer_hand = deck.shift(2)
    player_total = get_total(player_hand)
    dealer_total = get_total(dealer_hand)

    # DISPLAY APPROPRIATE CARDS & PLAYER TOTAL
    display_dealer_hand(dealer_hand)
    display_player_hand(player_hand)
    display_total(PLAYER, player_total)

    # PLAYER'S TURN
    move_choice = ''
    loop do
      break if round_over?(player_total)
      move_choice = players_turn
      break if move_choice == STAY
      prompt(TEXT[:player_hits])

      update_hand(deck, player_hand)
      display_player_hand(player_hand)

      player_total = get_total(player_hand)
      display_total(PLAYER, player_total)

      break if player_total == WINNING_NUMBER
    end

    if player_total > WINNING_NUMBER
      losses += 1
      puts TEXT[:player_busted]
      next_round
      next
    elsif player_total == WINNING_NUMBER
      wins += 1
      puts TEXT[:player_twenty_one]
      next_round
      next
    elsif move_choice == STAY
      prompt(TEXT[:player_stays])
      display_total(PLAYER, player_total)
    end

    # DEALER'S TURN (IF PLAYER HASN'T BUSTED)
    loop do
      unless player_total > WINNING_NUMBER
        break if round_over?(dealer_total)

        if dealer_total < DEALER_STAY_AT
          prompt(TEXT[:dealer_hits])
          update_hand(deck, dealer_hand)
          dealer_total = get_total(dealer_hand)
          display_total(DEALER, dealer_total)
        else
          prompt("#{TEXT[:dealer_stays]} at #{dealer_total}.")
          break
        end
      end
    end

    if dealer_total > WINNING_NUMBER
      wins += 1
      puts TEXT[:dealer_busted]
      next_round
      next
    elsif dealer_total == WINNING_NUMBER
      losses += 1
      puts TEXT[:dealer_twenty_one]
      next_round
      next
    end

    # COMPARE HANDS (IF NEITHER PLAYERS BUSTS)
    if !busted?(player_total) && !busted?(dealer_total)
      if player_total == dealer_total
        puts TEXT[:tie]
      else
        player_won?(player_total, dealer_total) ? wins += 1 : losses += 1
        display_round_winner(player_won?(player_total, dealer_total))
      end
      next_round
      next
    end
  end

  display_scoreboard(wins, losses)
  display_overall_winner(wins, losses)

  # PLAY AGAIN?
  break unless play_again?
end

puts TEXT[:thanks_for_playing]
clean_exit

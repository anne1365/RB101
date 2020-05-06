=begin ------------------------------------------------------------------------
PROBLEM:
- We want to build the game twenty-one, in which cards are dealt to a player
  and dealer, and additional cards are dealt per the player's request (or the
  dealer's) with the goal of the cards' sum equalling- but not surpassing - 21.
  
  SUB-PROBLEMS:
  - we want to construct a data structure that holds a deck of cards which can
    be 'drawn' from and updated. The deck needs to hold 4 suits of 13 values
    each.

UNDERSTANDING THE PROBLEM:
  INPUTS  -->
  OUTPUTS -->
  QUESTIONS:
    - During a player turn, can the player still hit if their total is 21?
    - How can we track the values of multiple aces in a hand?
  RULES:
      - game consists of dealer and player, each of which get 2 cards to start
      - player can see their 2 cards and 1 of the dealer's cards
      - aces are equal to 1 or 11 depending on the sum of the current hand:
        --> if the hand + 11 <= 21, ace = 11, else ace = 1
      - cards 2-10 = their face value
      - 'Jack's, 'Queen's, and 'King's = 10 
      - During a player's turn, a player can get another card (hit) or keep
        their curent hand (stay)
        - if player hits and total > 21, they've busted, the dealer wins, and
          the game is over
        - player can hit until they bust or decide to stay
      - Upon player decision to stay, dealer will hit until total is at least
        17, and then stay if they have not busted (in which case player wins)
      - If neither player nor dealer has busted, their hands will be compared,
        and the hand total closest to 21 is the winning hand
  IDEAS:

EXAMPLES / TEST CASES:

DATA STRUCTURE:
  DECK OF CARDS: 

ALGORITHM / PSEUDOCODE:

=end # ------------------------------------------------------------------------

require 'yaml'

# ----------------------------->>>  CONSTANTS  <<<-----------------------------
MESSAGES = YAML.load_file('twenty_one_config.yml')
SUITS = %w(D H S C)
NUMBERS = %w(1 2 3 4 5 6 7 8 9 10 J Q K A)
SUIT_NAMES = {'D'=> 'Diamonds',
              'H'=> 'Hearts',
              'S'=> 'Spades',
              'C'=> 'Clubs' }
HIT_OR_STAY = "             -------------------------\n" +
              "             | HIT or STAY? (H or S) |\n" +
              "             -------------------------\n"
# ----------------------------->>>   METHODS   <<<-----------------------------
def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(NUMBERS).shuffle
end

def display_player_hand(cards)
  numbers = cards.map{ |el| el[1]}
  prompt "YOUR HAND:  #{numbers.join(', ')}"
end

def display_dealer_hand(cards)
  prompt "DEALER'S HAND: #{cards[0][1]}, unknown"
  puts ''
end

def player_move_choice(cards)
end


def hit(deck, cards)
  cards << deck.shift
end

def get_total(cards)
  numbers = cards.map{|el| el[1]}
  sum = 0
  numbers.each do |num|
    if num == 'J' || num == 'Q' || num == 'K'
      sum += 10
    elsif num == 'A' && sum <= 10
      sum += 11
    elsif num == 'A' && sum > 10
      sum += 1
    else
      sum += num.to_i
    end
  end
  sum 
end

def display_total(player, total)
  prompt "#{player} TOTAL: #{total}"
end

def player_won?(total1, total2)
  total1 > total2
end

def instant_win?(total)
  total == 21
end

def busted?(total)
  total > 21
end

def display_winner(bool)
 puts bool ? ":) PLAYER WON (:" : "): DEALER WON :("
end

# ----------------------------->>> GAME  LOGIC <<<-----------------------------
loop do
  loop do
    system 'cls'
    puts MESSAGES[:get_name]
    
    deck = initialize_deck
    player_hand = deck.shift(2)
    dealer_hand = deck.shift(2)
    player_total = get_total(player_hand)
    dealer_total = get_total(dealer_hand)
  
    display_dealer_hand(dealer_hand)
    display_player_hand(player_hand)
    display_total('YOUR', player_total)
  
    move_choice = nil
    loop do
      break if busted?(player_total) || instant_win?(player_total)
      
      loop do
        puts HIT_OR_STAY
        move_choice = gets.chomp.upcase
        
        if move_choice == 'S' || move_choice == 'H'
          break
        else
          prompt "Error: Invalid move choice."
        end
      end
      
      break if move_choice == 'S'
  
      prompt "You chose to HIT"
      player_hand = hit(deck, player_hand)
      player_total = get_total(player_hand)
      
      display_player_hand(player_hand)
      display_total('YOUR', player_total)
      break if instant_win?(player_total)
      puts
    end
  
    if busted?(player_total)
      puts "-----------------------------------------------------"
      puts "                 ):  YOU BUSTED  :("
      puts "-----------------------------------------------------"
      break
    elsif instant_win?(player_total)
      puts "-----------------------------------------------------"
      puts "         :D   YOU GOT 21! YOU WIN!   :D"
      puts "-----------------------------------------------------"
      break
    elsif move_choice == 'S'
      prompt "You chose to STAY"
      display_total('YOUR', player_total)
      puts
    end
    
    loop do unless busted?(player_total)
      break if busted?(dealer_total) || instant_win?(dealer_total)
      if dealer_total < 17
        prompt "Dealer chooses to HIT"
        dealer_hand = hit(deck, dealer_hand)
        dealer_total = get_total(dealer_hand)
        display_total('DEALER', dealer_total)
        puts    
      else
        prompt "Dealer chooses to STAY"
        display_total('DEALER', dealer_total)
        puts
        break
      end
    end
    end
  
    if busted?(dealer_total)
      puts "-----------------------------------------------------"
      puts "         :D   DEALER BUSTED -- YOU WIN! :D"
      puts "-----------------------------------------------------"
      break
    elsif instant_win?(dealer_total)
      puts "-----------------------------------------------------"
      puts "         ):   DEALER GOT 21 -- YOU LOSE! :("
      puts "-----------------------------------------------------"
      break
    end
  
    if busted?(player_total) == false && busted?(dealer_total) == false
      if player_total == dealer_total
        prompt "-----  IT'S A TIE!  -----"
      else
        display_winner(player_won?(player_total, dealer_total))
      end
    end  
    
    break
  end

  prompt "Do you want to play again? (Y / N)"
  answer = gets.chomp.upcase
  break if answer == 'N'
end
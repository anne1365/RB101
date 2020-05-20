=begin
PROBLEM:
We started working on a card game but got stuck. Check out why
the code below raises a TypeError.

Once you get the program to run and produce a sum, you might
notice that the sum is off: It's lower than it should be. Why is that?
=end
require 'pry'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop

end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end
  sum += scores.sum
end

puts sum
=begin
the sum is incorrect because the sum is the same for each suit
- it appears the player's hand isn't being taken into account.
The last shuffled deck is the sum added to sum four times -
the shuffling of the individual suits hasn't been saved.
but a possible way to fix it would be to subtract the player's
hand from the default deck total
=end
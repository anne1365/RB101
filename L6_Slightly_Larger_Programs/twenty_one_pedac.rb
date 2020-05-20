=begin ------------------------------------------------------------------------
PROBLEM:
- We want to build the game twenty-one, in which cards are dealt to a player
  and dealer, and additional cards are dealt per the player's request (or the
  dealer's) with the goal of the cards' sum equalling- but not surpassing - 21.
  
  SUB-PROBLEMS:
  - we want to construct a data structure that holds a deck of cards which can
    be 'drawn' from and updated. The deck needs to hold 4 suits of 13 values
    each.
  - we want to have methods to numerically sum hands, show totals, calculate
    winners, etc.

UNDERSTANDING THE PROBLEM:
  INPUTS  -->
  OUTPUTS -->
  QUESTIONS:
    - During a player turn, can the player still hit if their total is 21?
      --> Decided they should not be able to - they've already won
    - How can we track the values of multiple aces in a hand?
      --> By assigning each card in the hand a value, one by one
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

=end # ------------------------------------------------------------------------
VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'o' => 'spock'
}
WINNING_MOVES = {
  'r' => ['s', 'l'],
  'p' => ['r', 'o'],
  's' => ['p', 'l'],
  'l' => ['p', 'o'],
  'o' => ['r', 's']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("YOU WON!")
  elsif win?(computer, player)
    prompt("COMPUTER WON :(")
  else
    prompt("IT'S A TIE.")
  end
end

def display_scoreboard(win, loss)
  if (win == 5) && (loss == 5)
    prompt("You're BOTH winners - it's a tie!")
  elsif win >= 5
    prompt("GAME OVER: Player won!")
  elsif loss >= 5
    prompt("GAME OVER: Computer won!")
  else
    prompt("HUMAN: #{win}  COMPUTER: #{loss}")
  end
end

wins = 0
losses = 0
loop do
  choice = ''
  loop do
    prompt("CHOOSE:\nr - rock\np - paper\ns - scissors\nl - lizard\no - spock")
    choice = Kernel.gets().chomp()

    if CHOICES.include?(choice.downcase)
      break
    else
      prompt("------------------------------------")
      prompt("Error: That's not a valid choice!")
      prompt("------------------------------------")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample

  prompt("----------------------------------------")
  prompt("You chose: #{VALID_CHOICES[choice.downcase]}")
  prompt("Computer chose: #{VALID_CHOICES[computer_choice]}")

  if win?(choice, computer_choice)
    wins += 1
  elsif win?(computer_choice, choice)
    losses += 1
  end

  display_result(choice, computer_choice)
  prompt("----------------------------------------")

  display_scoreboard(wins, losses)
  break if (wins >= 5) || (losses >= 5)

  prompt("Would you like to play again? (y/n)")
  play_again = gets().chomp()
  break unless play_again.downcase().start_with?('y')
end

prompt("Thanks for playing!")

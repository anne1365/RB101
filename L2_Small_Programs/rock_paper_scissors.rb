CHOICES = {
  'r' => {name: 'rock', beats: ['s', 'l']},
  'p' => {name: 'paper', beats: ['r', 'o']},
  's' => {name: 'scissors', beats: ['p', 'l']},
  'l' => {name: 'lizard', beats: ['p', 'o']},
  'o' => {name: 'spock', beats: ['r', 's']}
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  CHOICES[first][:beats].include?(second)
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

def get_overall_winner(win, loss)
  if (win == 5) && (loss == 5)
    'tie'
  elsif win >= 5
    'player'
  elsif loss >= 5
    'computer'
  else
    prompt("HUMAN: #{win}  COMPUTER: #{loss}")  
  end
end

def display_scoreboard(winner)
  case winner
  when 'tie'      then prompt("You're BOTH winners - it's a tie!")
  when 'player'   then prompt("GAME OVER: You won! :D :D :D")
  when 'computer' then prompt("GAME OVER: Computer won!")                 
  end
end

system('clear') || system('cls')

puts('--------------------------------------------------------')
puts("    Welcome to Rock, Paper, Scissors, Lizard, Spock!    ")
puts('--------------------------------------------------------')

wins = 0
losses = 0
loop do
  choice = ''
  loop do
    
    prompt("CHOOSE:\n    r - rock\n    p - paper\n    s - scissors\n    l - lizard\n    o - spock")
    choice = Kernel.gets().chomp()

    if CHOICES.keys.include?(choice.downcase)
      break
    else
      prompt("------------------------------------")
      prompt("Error: That's not a valid choice!")
      prompt("------------------------------------")
    end
  end

  computer_choice = CHOICES.keys.sample

  prompt("----------------------------------------")
  prompt("You chose: #{CHOICES[choice.downcase][:name]}")
  prompt("Computer chose: #{CHOICES[computer_choice][:name]}")

  if win?(choice, computer_choice)
    wins += 1
  elsif win?(computer_choice, choice)
    losses += 1
  end

  display_result(choice, computer_choice)
  prompt("----------------------------------------")

  display_scoreboard(get_overall_winner(wins, losses))
  break if (wins >= 5) || (losses >= 5)

  prompt("Would you like to play again? (y/n)")
  play_again = gets().chomp()
  break if play_again.downcase().start_with?('n')

  system('clear') || system('cls')
end

prompt("Thanks for playing!")

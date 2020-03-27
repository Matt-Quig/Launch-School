def test_method
  prompt('test message')
end

VALID_CHOICES = %w(r p s l c).freeze

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && (second == 's' || second == 'l')) ||
    (first == 'p' && (second == 'r' || second == 'c')) ||
    (first == 's' && (second == 'p' || second == 'l')) ||
    (first == 'l' && (second == 'c' || second == 'p')) ||
    (first == 'c' && (second == 'r' || second == 's'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You Won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

computer_wins = 0
player_wins = 0

def score_tracker(player, computer)
  if win?(player, computer)
    player_wins += 1
    
  elsif win?(computer, player)
    computer_wins += 1
  end
end

prompt("Let's play Rock, Paper, Scissors, Lizard, Spock")
loop do
  choice = ''
  loop do
    prompt(' r for rock, p for paper, s for scissors, l for lizard  and c for Commander Spock')
    prompt("Choose one: #{VALID_CHOICES.join('. ')}")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break

    elsif prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice} the computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  score_tracker(choice, computer_choice)

  prompt("The score is you: #{player_wins} and the computer: #{computer_wins}")
  
  loop do
    if player_wins == 5
      prompt('You are the Grand Winner!')
    elsif computer_wins == 5
      prompt('The Computer is the Grand Winner')
    else
     break
    end
  end

  prompt('Do you want to play again?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye!')

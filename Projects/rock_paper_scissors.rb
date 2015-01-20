# rock paper scissors

CHOICES = ["rock", "paper", "scissors"]

def computer_selects
  CHOICES.sample
end

def win(computer_choice)
  "The computer shoots #{computer_choice}, you win!"
end

def lose(computer_choice)
  "The computer shoots #{computer_choice}, you lose!"
end

def draw(computer_choice)
  "The computer shoots #{computer_choice}, its a draw!"
end

puts "Welcome to Rock, Paper, Scissors"

wins = 0
while wins < 3

  print "What do you choose: "
  user_input = gets.downcase.chomp

  computer_choice = computer_selects

  if computer_choice == user_input
    puts draw(computer_choice)
  elsif user_input == "rock" && computer_choice == "scissors"
    wins += 1
    puts win(computer_choice)
  elsif user_input == "paper" && computer_choice == "rock"
    wins += 1
    puts win(computer_choice)
  elsif user_input == "scissors" && computer_choice == "paper"
    wins += 1
    puts win(computer_choice)
  elsif !CHOICES.include?(user_input)
    puts "Please enter rock, paper, or scissors"
  else
    puts lose(computer_choice)
  end
end

puts "You won 3 games!"

require_relative("hangman_art")

class HangmanGame

  def initialize(guesses, puzzle)
    @guesses = guesses
    @puzzle = puzzle
    @letters_to_guess_from = [*"A".."Z"]
    @bad_guesses = []
    @correct_guesses = 0
    @show = ""
  end

  def check_guess(user_input)
    @letters_to_guess_from.delete(user_input)
    if @puzzle.include?(user_input)
      @correct_guesses += 1
      puts "RIGHT!"
    elsif user_input.length > 1
      puts "Please enter 1 letter"
    else
      @bad_guesses << user_input
      @guesses += 1
      puts "WRONG"
    end
  end

  def display_game
    puts @@art[@guesses] #if not a class variable undefined method `[]' for nil:NilClass (NoMethodError)
    puts " "
    print "Available Guesses: -" #added dash just to make things appear symetrical
    @letters_to_guess_from.each { |letter| print letter + "-"}
    puts " "
    puts "Puzzle Category: Buzzwords of 2014"
    puts "What letter would you like to guess? "
    @show
  end

  def covered_word
    letters = @puzzle.length
    letters.times { @show << "$"}
  end

  def display_word(user_input)
    @puzzle.split("").each_with_index do |letter, index|
      if user_input == letter
        @show[index] = user_input
      end
    end
    @show
  end

  def check_for_dupes(user_input)
    if @bad_guesses.include?(user_input)
      @correct_guesses -= 1
      @guesses -= 1
      @bad_guesses.delete(user_input)
      puts "You already picked that letter!"
    end
  end

  def check_game_over
    if @bad_guesses.length == 7
      puts "Sorry you lose."
      return true
    end
    false
  end

  def check_won
    unless @show.include?("$")
      puts "YEAAAAA YOU WIN!!!!"
      return true
    end
    false
  end

end

puzzles = %w(ALGORITHM GENOMICS UKRAINE EBOLA RUBLES HACKERS UBER) #make sure to use all caps
puzzle = puzzles.sample
#maybe put this in a module to tidy things up
puts " "
27.times { print "*"}
puts " "
print "*** "
print "Welcome to Hangman!"
print " ***"
puts " "
27.times { print "*"}
puts " "


game = HangmanGame.new(0, puzzle) 

game.covered_word

game_over = false
won = false
until game_over || won
  
  puts game.display_game #shows the art, available guesses, category, prompts user, covered word
  user_input = gets.upcase.chomp
  game.check_for_dupes(user_input)
  puts game.display_word(user_input) #reveals the word, as user guesses correctly
  puts game.check_guess(user_input)
  game_over = game.check_game_over
  won = game.check_won

end

puts "Thanks for playing!"
require './lib/game.rb'


def main_menu
  loop do
    puts "***LET'S PLAY HANGMAN***"
    puts "Press [s] to start a new game."
    puts "Press [x] to exit."
    main_choice = gets.chomp
    if main_choice == 's'
      start_game
    elsif main_choice == 'x'
      puts "Thanks! Come play again later!\n\n"
      exit
    else
      puts "not a valid entry"
    end
  end
end


def start_game
  puts "***PLAYER 1*** Please enter your hangman word for PLAYER 2:"
  input_word = gets.chomp
  @new_game = Game.new(input_word)
  puts "Word entered.  Hand over the keyboard to PLAYER 2!\n\n"
  loop do
    puts "***PLAYER 2*** Please guess a letter"
    if input_word == letter
      show letter
    input_letter = gets.chomp
    is_correct_guess = @new_game.guess_letter(input_letter)
    if is_correct_guess
      puts "Yay! Correctomundo!"
      puts "CORRECT GUESSES:" + "#{@new_game.correct_guesses}"
    else
      puts "You're wrong!"
      puts "WRONG GUESSES:" + "#{@new_game.wrong_guesses}"
    end

    if @new_game.game_loss == 'You lose'
      puts @new_game.game_loss
      break
    end

    if @new_game.game_win == "WINNER WINNER"
      puts @new_game.game_win
      break
    end
  end
end


main_menu


class Game
  attr_reader :word, :correct_guesses, :wrong_guesses

  def initialize(word)
    @word = word
    @correct_guesses = []
    @wrong_guesses = []
    # @loss = 6
  end

  def guess_letter(guess_letter)
    @guess_letter = guess_letter
    if @word.include?(@guess_letter)
      @word.split('').each do |letter|
        if @guess_letter == letter
          @correct_guesses << letter
        end
      end
      return true
    else
      @wrong_guesses << @guess_letter
      return false
    end
  end

  # def correct_guesses
  #   @correct_guesses = correct_guesses
  #   letter.each do |x|
  #     if letter == word
  #     correct_guesses << letter
  #     end
  #   end
  # end

  # def letter_spaces
  #   @word = ("*" * @word.length)
  # end

  def game_loss
    if wrong_guesses.length == 6
      'You lose'
    end
  end

  def game_win
    if correct_guesses.length == word.length
      'WINNER WINNER'
    end
  end




    # @word = @word.split
    # @word.
    # end
end



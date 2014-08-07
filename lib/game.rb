class Game
  attr_reader :word, :correct_guesses, :wrong_guesses

  def initialize(word)
    @word = word
    @correct_guesses = []
    @wrong_guesses = []
  end

  def guess_letter(letter)
    @letter = letter
    if @word.include?(@letter)
      @correct_guesses << @letter
    return true
    else !@word.include?(@letter)
       @wrong_guesses << @letter
    return false

    end
  end


    # @word = @word.split
    # @word.
    # end

end

require 'rspec'
require 'game'

describe Game do
  it 'should initialize a new game with a word' do
    test_game = Game.new("tiger")
    expect(test_game).to be_an_instance_of Game
  end

  it 'should set the entered word as the game word' do
    test_game = Game.new("tiger")
    expect(test_game.word).to eq "tiger"
  end

  it 'should return true and add input letter to correct_guesses array if the letter entered is included in the game word' do
    test_game = Game.new("tiger")
    expect(test_game.guess_letter('i')).to eq true
    expect(test_game.correct_guesses).to eq ['i']
  end

  it 'should return false and add input letter to wrong_guesses array if the letter entered is not included in the game word' do
    test_game = Game.new("tiger")
    expect(test_game.guess_letter('w')).to eq false
    expect(test_game.wrong_guesses).to eq ['w']
  end


  it 'should return all instances of correctly guessed letters.' do
    test_game = Game.new("thee")
    expect(test_game.guess_letter("e")).to eq true
    expect(test_game.correct_guesses).to eq ['e', 'e']
  end






  # it 'should return a number of asterisks according to word length' do
  #   test_game = Game.new("tiger")
  #   expect(test_game.letter_spaces).to eq "*****"
  # end

  # it 'should replace asterisks with correctly guessed letters each time a correct guess is made' do
  #   test_game = Game.new("tiger")
  #   ['t'].each do |correct_letter|
  #     test_game.guess_letter(correct_letter)
  #   end
  #   expect(test_game.letter_spaces).to eq "t****"
  # end

  # it "should return 'You lose.' when wrong_guesses exceeds 6" do
  #   test_game = Game.new("asterisks")
  #   ['z', 'x', 'w', 'q', 'g', 'j'].each do |wrong_letter|
  #     test_game.guess_letter(wrong_letter)
  #   end
  #   expect(test_game.game_loss).to eq 'You lose'
  # end

end

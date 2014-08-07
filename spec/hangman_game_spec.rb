require 'rspec'
require 'game'

describe Game do
  it 'should initialize a new game with a player name' do
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

  it 'should return a number of asterisks according to word length' do
    test_game = Game.new("tiger")
    expect(test_game.letter_spaces).to eq "*****"
  end

end

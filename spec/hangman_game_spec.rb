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

  #guess_letter
  #takes a letter as an argument, returns true and adds letter
  #to correct_guesses array or false and adds to incorrect_guesses array.


end

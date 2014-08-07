require 'rspec'
require 'game'

describe Game do
  it 'should initialize a new game with a player name' do
    test_game = Game.new("player_name")
    expect(test_game).to be_an_instance_of Game
  end
end

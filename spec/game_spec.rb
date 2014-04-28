require 'spec_helper'
require 'game'

describe Game do
  it 'starts a game by welcoming the player' do
    game = Game.new
    expect(game.start).to eq "Welcome to Mastermind!"
  end

end

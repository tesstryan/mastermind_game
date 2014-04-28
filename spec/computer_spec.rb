require 'spec_helper'
require 'computer'
require 'guess_evaluator'

describe Computer do
  let(:secret_code) { "YRYG" }
  let(:computer) { Computer.new }

  it 'guesses a code' do
     guess = computer.make_guess
     expect(guess.length).to eq 4
  end

  # it 'returns a guess including only letters R,Y,O,P,B,G' do
  #   guess = computer.make_guess

  it 'receives feedback from the guess_evaluator' do
    guess = computer.make
  end


end


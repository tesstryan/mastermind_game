require_relative 'guess_evaluator'

class Computer

  attr_reader :number_of_guesses

  def initialize
    @number_of_guesses = 0
  end

  def make_guess
    @number_of_guesses += 1
    guess = ["R", "G", "B", "O", "Y", "P"].repeated_permutation(4).to_a.sample(1).join

  end



end



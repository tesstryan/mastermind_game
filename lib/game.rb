require_relative 'computer'
require 'pry'

class Game

  def initialize
    @winner = false
    @computer = Computer.new
  end

  def start
    puts "Welcome to Mastermind!"
    puts "Please enter your secret code."

    @secret_code = gets.chomp

    while @winner == false
      if @computer.number_of_guesses <= 10
        guess = @computer.make_guess
        # check if that guess is correct
        if guess == @secret_code
          @winner = true
          puts "The computer guessed correctly with #{guess} in #{@computer.number_of_guesses} guesses."
        else
          guess = @computer.make_guess
        end
        # if it is, end the game
        # if not, guess again
      else
        @winner = true
        puts "You win!"
      end
    end
  end

end

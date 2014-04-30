require_relative 'game'
require_relative 'computer'

class GuessEvaluator

  def initialize(secret_code)
    @secret_code = secret_code
    @exact_match = 0
    @color_match = 0
    @color_matched_letters = []
  end

  def evaluate(guess)
    guess.split("").each_with_index do |letter, index|
      if letter == @secret_code[index]
        @exact_match += 1
      elsif @secret_code.include?(letter) && !@color_matched_letters.include?(letter)
        @color_matched_letters << letter
        @color_match += 1
      end
    end
    { exact_match: @exact_match, color_match: @color_match }
  end

end

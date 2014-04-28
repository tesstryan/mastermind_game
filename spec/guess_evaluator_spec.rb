require 'spec_helper'
require 'guess_evaluator'
require 'player'

describe GuessEvaluator do
  let(:secret_code) { "YRYG" }
  let(:guess_evaluator) { GuessEvaluator.new(secret_code) }

  it 'evaluates the computers totally wrong guess' do
    result = guess_evaluator.evaluate("PPPP")
    expected_result = { :exact_match => 0, :color_match => 0 }
    expect(result).to eq expected_result
  end

  it 'evaluates one exact match' do
    result = guess_evaluator.evaluate("YOBP")
    expected_result = { :exact_match => 1, :color_match => 0 }
    expect(result).to eq expected_result
  end

  it 'evaluates one color match' do
    result = guess_evaluator.evaluate("GPPP")
    expected_result = { :exact_match => 0, :color_match => 1 }
    expect(result).to eq expected_result
  end

  it 'evaluates one color match with two of the same color' do
    result = guess_evaluator.evaluate("GPGP")
    expected_result = { :exact_match => 0, :color_match => 1 }
    expect(result).to eq expected_result
  end

  it 'evaluates two color matches with two of the same color' do
    result = guess_evaluator.evaluate("GYGY")
    expected_result = { :exact_match => 0, :color_match => 2 }
    expect(result).to eq expected_result
  end

  it 'evaluates one exact match and two color matches' do
    result = guess_evaluator.evaluate("YYGO")
    expected_result = { :exact_match => 1, :color_match => 2 }
    expect(result).to eq expected_result
  end

  it 'evaluates a correct guess' do
    result = guess_evaluator.evaluate("YRYG")
    expected_result = { :exact_match => 4, :color_match => 0 }
    expect(result).to eq expected_result
  end

end


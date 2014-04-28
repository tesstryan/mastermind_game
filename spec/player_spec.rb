require 'spec_helper'
require 'player'

describe Player do
  let(:player) { Player.new }

  it 'makes a secret_code' do
     secret_code = player.make_secret_code
     expect(secret_code.length).to eq 4
  end

end


require 'game'

describe 'Game' do

  it 'should be creatable' do
    expect(Game.new).to be_a(Game)
  end

end

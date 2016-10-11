require 'game'

describe Game do

  before(:each) do
    @game = Game.new
  end

  it 'with 20 gutters should score zero' do
    rollMany(0,20)

    expect(@game.score).to eq(0)

  end

  it 'with 20 ones should score 20' do
    rollMany(1,20)

    expect(@game.score).to eq(20)
  end

  it 'with 1 spare should score the next roll' do
    @game.roll(5)
    @game.roll(5)
    @game.roll(3)
    rollMany(0, 17)

    expect(@game.score).to eq(16)
  end

  it 'with a strike should score the next two rolls' do
    @game.roll(10)
    @game.roll(5)
    @game.roll(3)
    rollMany(0, 17)
    expect(@game.score).to eq(26)
  end

  it 'with all strikes should be a perfect game' do
    rollMany 10, 12
    expect(@game.score).to eq(300)
  end

  def rollMany(pinsPerRound, numRounds)
    numRounds.times do
      @game.roll(pinsPerRound)
    end
  end
end

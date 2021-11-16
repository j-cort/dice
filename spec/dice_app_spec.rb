require 'dice_app'

describe Dice do
  it 'allows user to roll a dice' do
    dice = Dice.new
    expect(dice).to respond_to :roll
  end
  it 'returns a number between 1-6 when dice is rolled' do
    expect(subject.roll(1)).to be_between(1, 6)
  end
  it 'returns a number between 1-6 when dice is rolled randomly' do
    1000.times { expect(subject.roll(1)).to be_between(1,6) } 
  end
  it 'allows user to roll any number of dice' do 
    expect(subject).to respond_to(:roll).with(1).argument
  end 
  # it 'returns a number between 1-6 with any number of dice roles' do
  #   1000.times {
  #     n = rand(1..1000)
  #     expect(subject.roll(n).to be_between(1, 6)
  #   }
  end
end
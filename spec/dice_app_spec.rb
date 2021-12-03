require 'dice'

describe Dice do
  let(:dice) { described_class.new }

  it 'allows user to roll a dice' do
    expect(dice).to respond_to :roll
  end

  it 'returns a number between 1-6 when dice is rolled' do
    dice.roll
    expect(dice.log.last.last).to be_between(1, 6)
  end

  it 'returns a number between 1-6 when dice is rolled randomly' do
    1000.times { dice.roll } 
    dice.log.all? { |turn| turn.last >= 1 && turn.last <= 6 }
  end

  it 'allows user to roll any number of dice' do 
    expect(dice).to respond_to(:roll).with(1).argument
  end 

  it 'returns a number between 1-6 with any number of dice roles' do
    dice.roll(3)
    expect(dice.log.last.all? {|roll| roll >= 1 && roll <= 6}).to eq true
  end

  it "records previous dice roll in a log" do
    dice.roll(3)
    expect(dice.current_roll).to eq dice.log.last
  end

  it "allows user to see current score" do
    dice.current_roll.push(5, 3, 2)
    expect{dice.print_current_score}.to output("10").to_stdout
  end
  
end
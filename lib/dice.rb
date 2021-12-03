class Dice
  attr_reader :log, :current_roll
  
  def initialize
    @log = []
    @current_roll = []
  end

  def roll(n = 1)
    @current_roll.clear
    get_random(n)
    store_roll
  end

  def print_current_score
    print @current_roll.sum
  end

  private

  def get_random(n)
    n.times { @current_roll << rand(1..6) }
  end

  def store_roll
    @log << @current_roll
  end



end
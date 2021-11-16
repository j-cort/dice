class Dice
  def roll(n)
    n.times { rand(1..6) }
  end
end
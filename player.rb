class Player
  attr_accessor(:name, :lives, :correct)

  def initialize(name, lives=3)
    @name = name
    @lives = lives
    @correct = 0
  end

  def gain_point
    @correct += 1
  end

  def lose_life
    @lives -= 1
  end
end

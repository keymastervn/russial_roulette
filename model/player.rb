class Player
  attr_accessor :id, :name, :dead

  def initialize
    self.id = ('a'..'z').to_a.shuffle[0,8].join
    self.dead = 0
  end

  def lose
    self.dead += 1
  end
end

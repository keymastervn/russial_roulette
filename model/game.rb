require 'pry'

class Game
  attr_accessor :roulette, :players

  def initialize(*args)
    self.players = args
  end

  def add_roulette roulette
    self.roulette = roulette

    self
  end

  def play
    first_bullet = roulette.find_index 1
    index = (first_bullet + 1) % players.length - 1
    players[index].lose

    self
  end
end

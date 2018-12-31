require_relative '../service/random_bullet'
require 'pry'

class Roulette
  include RandomBullet
  attr_accessor :magazine

  def initialize max_size = 0, bullets = 0
    self.magazine = insert_bullet max_size, bullets
  end
end

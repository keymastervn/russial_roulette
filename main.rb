# require_relative './model'
# require_relative './service'
require 'pry'

Dir["#{File.dirname(__FILE__)}/**/*.rb"].each { |f| require(f) unless f == "./main.rb" }

number_of_play = 1_000_000

a = Player.new
b = Player.new
# c = Player.new

number_of_play.times do |i|
  roulette = Roulette.new 24, 3
  Game.new(a, b)
    .add_roulette(roulette.magazine)
    .play
end

p "First player dead: #{a.dead}"
p "Second player dead: #{b.dead}"

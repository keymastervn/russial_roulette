require 'securerandom'

module RandomBullet
  def insert_bullet max_size, bullets
    blank_magazine = Array.new(max_size)

    loop do
      blank_magazine[SecureRandom.random_number(max_size)] = 1
      break if blank_magazine.compact.length == bullets
    end

    blank_magazine
  end
end

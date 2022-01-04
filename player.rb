
class Player

  attr_accessor :player_counter, :name

  def initialize (name)
    @player_counter = 3
    @name = name
  end

  def wrong
    @player_counter -= 1
  end

end
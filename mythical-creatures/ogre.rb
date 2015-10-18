class Ogre
  attr_reader :name, :home, :encounter_counter, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.counter += 1
    swing_a_club if human.notices_ogre?
  end

  def swing_a_club
    @swings += 1
  end

  def hit?(human)
    human.hit_counter += 1
    @swings % 2 == 0
  end

  def apologize(human)
    human.hit_counter = 0
  end
end

class Human
  attr_reader :name
  attr_accessor :counter, :hit_counter

  def initialize(name = 'Jane')
    @name = name
    @counter = 0
    @knocked_out = false
    @hit_counter = 0
  end

  def notices_ogre?
    @counter % 3 == 0
  end

  def knocked_out?
    @hit_counter > 0
  end
end

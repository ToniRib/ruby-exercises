class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @position = :standing
    @num_actions = 0
    @sick = false
  end

  def shoot
    @num_actions += 1
    @cranky = determine_crankiness
    cranky? || laying? ? say_no : 'Twang!!!'
  end

  def determine_crankiness
    @num_actions > 2
  end

  def run
    @num_actions += 1
    @cranky = determine_crankiness
    cranky? || laying? ? say_no : 'Clop clop clop clop!!!'
  end

  def sleep
    standing? ? say_no : rested
  end

  def sick?
    @sick
  end

  def drink_potion
    @sick = true unless cranky?
    standing? ? rested : say_no
  end

  def rested
    @num_actions = 0
    @cranky = false
  end

  def stand_up
    @position = :standing
  end

  def say_no
    'NO!'
  end

  def lay_down
    @position = :laying
  end

  def laying?
    @position == :laying
  end

  def cranky?
    @cranky
  end

  def standing?
    @position == :standing
  end
end

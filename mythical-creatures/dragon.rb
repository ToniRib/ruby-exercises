class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @times_eaten = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @times_eaten += 1
    @hungry = determine_hunger
  end

  def determine_hunger
    @times_eaten < 3
  end
end

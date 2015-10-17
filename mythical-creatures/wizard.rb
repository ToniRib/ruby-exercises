class Wizard
  attr_reader :name

  def initialize(name, hash = {bearded: true})
    @name = name
    @bearded = hash[:bearded]
    @rested = true
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    "sudo #{message}"
  end

  def rested?
    @rested
  end

  def cast
    @spells_cast += 1
    @rested = @spells_cast > 2 ? false : true
    'MAGIC MISSILE!'
  end
end

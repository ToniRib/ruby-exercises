class Wizard
  attr_reader :name

  def initialize(name, hash = {bearded: true})
    @name = name
    @bearded = hash[:bearded]
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    "sudo #{message}"
  end

  def rested?
    @spells_cast < 3
  end

  def cast
    @spells_cast += 1
    'MAGIC MISSILE!'
  end
end

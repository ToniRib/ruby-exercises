class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
    @alive = true
    @num_victims = 0
  end

  def respond_to?(action)
    methods.include?(action)
  end

  def alive?
    @alive
  end

  def stare(person)
    @statues << person
    if @statues.count > 3
      @statues.first.stoned = false
      @statues.shift
    end
    person.stoned = true
    @num_victims += 1
    @alive = @num_victims > 4 ? false : true
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end

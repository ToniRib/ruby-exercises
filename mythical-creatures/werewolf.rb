class Werewolf
  attr_reader :name, :location

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @form = :human
    @hungry = false
  end

  def human?
    @form == :human
  end

  def respond_to?(action)
    methods.include?(action)
  end

  def change!
    @form = human? ? :werewolf : :human
    @hungry = true
  end

  def werewolf?
    @form == :werewolf
  end

  def hungry?
    @hungry
  end
end

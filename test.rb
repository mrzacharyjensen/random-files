class Viking
  attr_accessor :name, :age, :health, :strength
  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end
  def take_damage(damage)
    @health -= damage
    self.shout("OUCH!")
  end
  def shout(str)
    puts(str)
  end
  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Viking.new(name, age, health, strength)
  end
  def self.random_name
    ["erik", "Lars", "Leif"].sample
  end
end
class Card
  attr_accessor :name, :type, :attack, :defense
  @@all = []
  
  def initialize(name, type, attack, defense)
    @name = name
    @type = type
    @attack = attack
    @defense = defense
    @@all << self
  end
  
  def self.all
    @@all
  end
end
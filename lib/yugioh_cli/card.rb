class Card
  attr_accessor :name, :type, :desc, :card_sets
  @@all = []
  
  def initialize(name, type, desc, card_sets)
    @name = name
    @type = type
    @desc = desc
    @card_sets = card_sets
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find(id)
    self.all[id-1]
  end
end
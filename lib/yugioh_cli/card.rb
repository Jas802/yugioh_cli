class Card
  attr_accessor :name, :type, :desc, :card_sets
  @@all = []
  
  def initialize(name, type, desc, card_sets)
    @name = name
    @type = type
    @desc = desc
    @card_prices = card_sets
    @@all << self
  end
  
  def self.all
    @@all
  end
end
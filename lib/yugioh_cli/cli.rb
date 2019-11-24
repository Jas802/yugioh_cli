class CLI
  def start
    API.new.fetch
    Card.all.each do |card|
      puts card.name
      puts card.type
      puts card.card_sets
    end
  end
end
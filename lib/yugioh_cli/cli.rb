class Yugioh::CLI
  def start
    Yugioh::API.new.fetch
    Yugioh::Cards.all.each do |card|
      puts card.name
    end
end
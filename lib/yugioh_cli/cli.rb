class CLI
  def start
    API.new.fetch
    Cards.all.each do |card|
      puts card.name
    end
  end
end
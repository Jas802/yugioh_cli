class API
  def fetch
    url = "https://db.ygoprodeck.com/api/v5/cardinfo.php"
    response = HTTParty.get(url)
    response[0..19].each do |hash|
      description = hash ["desc"] if hash.has_key?("atk")
    Card.new(hash ["name"], hash ["type"], description, hash ["card_sets"])
    end
  end
end


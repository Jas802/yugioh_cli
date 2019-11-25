class API
  def fetch
    url = "https://db.ygoprodeck.com/api/v5/cardinfo.php"
    response = HTTParty.get(url)
    response[0..19].each do |hash|
    puts hash ["name"]
    puts hash ["type"]
    puts hash ["desc"] if hash.has_key?("atk")
    puts hash ["card_sets"]
    end
  end
end


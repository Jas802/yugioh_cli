class Yugioh::API
  def fetch
    url = "https://db.ygoprodeck.com/api/v5/cardinfo.php"
    response = HTTParty.get(url)
    respone[0..19].each do ||
      
    end
  end
end

def begin
  puts "It's your move!"
end
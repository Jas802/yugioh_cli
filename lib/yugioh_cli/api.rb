class API
  def fetch
    url = "https://db.ygoprodeck.com/api/v5/cardinfo.php"
    response = HTTParty.get(url)
    response[0..19].each do |hash|
      binding.pry
    end
  end
end

def begin
  puts "It's your move!"
end
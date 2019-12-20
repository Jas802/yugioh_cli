class CLI
  
  def call
    puts "I am Maximillion Pegasus, president of Industrial Illusions and creator of your favorite card game! I created some amazing cards today and here they are!"
    fetch_cards
    start
  end
    
  def start
   display_cards
    puts "Which card number do you want to know more about? Quickly now, we don't have all day!"
    input = gets.strip
    if input.to_i.between?(0, Card.all.length)
       card = Card.find(input.to_i)
    
      print_card(card)
      
  else  
    puts "Please enter a valid number. It's not that difficult."
    sleep(3)
     start
  
   
  
  end
    
    puts "Would you like to see another amazing card? Simply enter Y or N."
    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts "I'm sure you were impressed with all you saw! Best of luck, duelist!"
    else
      puts "My advanced brain could not understand that rather simple answer you gave."
    end
  end
  
  def fetch_cards
    API.new.fetch
  end
  
  def display_cards
    Card.all.each.with_index(1) do |card, index|
      puts "#{index} - #{card.name}"
      #puts card.type
      #puts card.desc
      #puts card.card_sets
    end
  end
  
  def print_card(card)
    puts "Here it is! Isn't it just beautiful?"
    puts card.name
    puts card.type
    puts card.desc
    puts card.card_sets
  end
  
  
end
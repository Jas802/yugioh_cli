class CLI
  
  def call
    puts "Its your move!"
    start
  end
    
  def start
    puts "I am Maximillion Pegasus, president of Industrial Illusions and creator of your favorite card game! I created some amazing cards today and here they are!"
    print_cards
    
    puts "Which card do you want to know more about? Quickly now, we don't have all day!"
    input = gets.strip
    
    card = Card.find(input.to_i)
    
    print_card(card)
    
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
  
  def print_cards
    API.new.fetch
    Card.all.each do |card|
      puts card.name
      #puts card.type
      #puts card.desc
      #puts card.card_sets
    end
  end
  
  def print_card(card)
    puts "Isn't it just beautiful?"
    puts card.name
    puts card.type
    puts card.desc
    puts card.card_sets
  end
  
  
end
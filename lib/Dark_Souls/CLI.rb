Class DarkSouls::CLI

  def call
    puts "welcome to Dark Souls"
    start
  end

  def start
    puts ""
    puts "choose a class, Warrior, Knight, Wanderer, Thief, Bandit, Hunter, Sorcerer, Pyromancer, Cleric, Deprived."
    input = gets.strip
    case input
    when "Warrior"
      puts "you have chosen Warrior..."
    when "Knight"
      puts "you have chosen Knight..."
    when "Wanderer"
      puts "you have chosen Wanderer..."
    when "Thief"
      puts "you have chosen Bandit..."
    
  end
  
  
end

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
      puts "you have chosen Thief..."
    when "Bandit"
      puts "you have chosen Bandit..."
    when "Hunter"
      puts "you have chosen Hunter..."
    when "Sorcerer"
      puts "you have chosen Sorcerer..."
    when "Pyromancer"
      puts "you have chosen Pyromancer..."
    when "Cleric"
      puts "you have chosen Cleric..."
    when "Deprived"
      puts "you have chosen Deprived..."
    else break
  end
  
  
  end
  
  
end

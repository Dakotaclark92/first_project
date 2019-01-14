Class DarkSouls::CLI

  def call
    puts "welcome to Dark Souls"
    list_classes
    start
    goodbye
  end
  
  def list_classes
    puts ""
    puts "Dark Souls classes are..."
    # strip classes here
  end

  def start
    input = nil
    while input != "exit"
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
      else
        puts "invalid choise please select from class list... if you need the list again please type in list_classes."
    end
  end
  
  def goodbye
    puts "YOU DIED"
  end
  
end




end

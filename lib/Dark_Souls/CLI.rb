class DarkSouls::CLI

  def call
    puts ""
    puts "Welcome to Dark Souls"
    puts ""
    puts "Choose your character"
    list_classes
    start
  end

  def list_classes
    puts ""
    puts "Dark Souls classes are..."
    puts ""
    puts @character = DarkSouls::Character.character_name
   # @character.each.with_index(1) do |character, n|
   #   puts "#{n}, #{character.name} - #{character.description}"
   # end
  end
  

  
  def start
    input = nil
    while input != "exit"
      puts ""
      puts "choose your class by typing in the number... type list to see choises again or type exit to leave"
      puts ""
      input = gets.strip
      if input.to_i > 0
        puts @character[input.to_i-1]
        puts "|"
        puts DarkSouls::Character.character_description[input.to_i-1]
        puts "|"
        puts "The starting equipment of your class is:"
        puts DarkSouls::Character.character_starting_equipment[input.to_i-1]
      elsif input == "list"
        list_classes
      elsif input == "exit"
        goodbye
      else
       puts "invalid choise please select from class list... if you need the list again please type in list."
      end
    end
  end
  
  def description
    puts ""
     @character = DarkSouls::Character.character_description
    puts ""
  end
  
  def starting_equipment
    puts ""
     @character = DarkSouls::Character.character_starting_equipment
    puts ""
  end
  


  def goodbye
    puts ""
    puts "YOU DIED"
    puts ""
  end
  
end

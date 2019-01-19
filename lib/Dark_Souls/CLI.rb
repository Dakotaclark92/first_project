class DarkSouls::CLI

  def call
    puts ""
    puts "Welcome to Dark Souls"
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
      puts "choose your class... or type list to see choises again"
      puts ""
      input = gets.strip
      if input.to_i > 0
        puts @character[input.to_i-1]
      elsif input == "list"
        list_classes
      elsif input == "exit"
        goodbye
      elsif input == "description"
        description
      elsif input == "starting_equipment"
        starting_equipment
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

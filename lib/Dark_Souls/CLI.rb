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
    @character = DarkSouls::Character.all
    @character.each.with_index(1) do |character, n|
      puts "#{n}, #{character.name} - #{character.description} - #{character.starting_equipment}"
    end
  end
  

  
  def start
    input = nil
    while input != "exit"
      puts ""
      puts "choose your class... or type list to see choises again"
      puts ""
      input = gets.strip
      if input.to_i > 0
        puts @classes[input.to_i-1]
      elsif input == "list"
        list_classes
      else
       puts "invalid choise please select from class list... if you need the list again please type in list."
      end
    end
  end
  


  def goodbye
    puts ""
    puts "YOU DIED"
    puts ""
  end
  
end

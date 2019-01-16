Class DarkSouls::CLI

  def call
   puts "welcome to Dark Souls"
   list_classes
    start
  end

 def list_classes
  puts ""
  puts "Dark Souls classes are..."
  puts ""
  @classes
  puts <<-DOC.gsub /^\s*/,''
   1. Warrior
   2. Knight
   3. Wanderer
   4. Thief
   5. Bandit
   6. Hunter
   7. Sorcerer
   8. Pyromancer
   9. Cleric
   10. Deprived
  DOC
 end

  
  def start
   input = nil
   while input != "exit"
    puts ""
     puts "choose your class... or type list to see choises again"
     puts ""
     input = gets.strip
     case input
     when "exit"
     goodbye
     when "1"
       puts "you have chosen Warrior..."
     when "2"
       puts "you have chosen Knight..."
     when "3"
       puts "you have chosen Wanderer..."
     when "4"
       puts "you have chosen Thief..."
     when "5"
       puts "you have chosen Bandit..."
     when "6"
       puts "you have chosen Hunter..."
     when "7"
       puts "you have chosen Sorcerer..."
     when "8"
       puts "you have chosen Pyromancer..."
     when "9"
       puts "you have chosen Cleric..."
     when "10"
       puts "you have chosen Deprived..."
     when "list"
       list_classes
     else
       puts "invalid choise please select from class list... if you need the list again please type in list."
     end
    end
  end


  def goodbye
    puts "YOU DIED"
  end
  
end



class Darksouls::Classes

  attr_accessor :name, :description, :starting_equipment

  def self.all
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
    
    class_1 = self.new
    class_1.name = Warrior
    class_1.description = "info here"
    class_1.starting_equipment = "info here"
    
    class_2 = self.new
    class_2.name = Knight
    class_2.description = "info here"
    class_2.starting_equipment = "info here"
    
    class_3 = self.new
    class_3.name = Wanderer
    class_3.description = "info here"
    class_3.starting_equipment ="info here"
    
    class_4 = self.new
    class_4.name = Thief
    class_4.description = "info here"
    class_4.starting_equipment ="info here"
    
    class_5 = self.new
    class_5.name = Bandit
    class_5.description = "info here"
    class_5.starting_equipment ="info here"
    
    class_6 = self.new
    class_6.name = Hunter
    class_6.description = "info here"
    class_6.starting_equipment ="info here"
    
    class_7 = self.new
    class_7.name = Sorcerer
    class_7.description = "info here"
    class_7.starting_equipment = "info here"
    
    class_8 = self.new
    class_8.name = Pyromancer
    class_8.description = "info here"
    class_8.starting_equipment ="info here"
    
    class_9 = self.new
    class_9.name = Cleric
    class_9.description = "info here"
    class_9.starting_equipment ="info here"
    
    class_10 = self.new
    class_10.name = Deprived
    class_10.description = "info here"
    class_10.starting_equipment ="info here"

    [class_1, class_2, class_3, class_4, class_5, class_6, class_7, class_8, class_9, class_10]
  
  end
end
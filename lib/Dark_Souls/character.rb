class DarkSouls::Character

  attr_accessor :name, :description, :starting_equipment

  def self.all
    
    character_1 = self.new
    character_1.name = "Warrior"
    character_1.description = "Warrior description"
    character_1.starting_equipment = "Warrior starting_equipment"
    
    character_2 = self.new
    character_2.name = "Knight"
    character_2.description = "Knight description"
    character_2.starting_equipment = "Knight starting_equipment"
    
    [character_1, character_2]
  end
  
end

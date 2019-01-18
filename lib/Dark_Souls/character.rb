class DarkSouls::Character

  attr_accessor :name, :description, :starting_equipment

  def self.all
    self.scrape_character
  end
  
  def self.scrape_character
    character = []
    
    character << self.scrape
    
    character
  end
  
  def self.scrape
    
    doc = Nokogiri::HTML(open("http://darksouls.wikia.com/wiki/Classes_(Dark_Souls)"))
    
    character = self.new
    character.name =  doc.search("h3 .mw-headline").map{|n|n.text}[0...10]
    character.description = doc.search(".floatright + p").map{|n|n.text}[0...10]
    character.starting_equipment = doc.search("p + ul").map{|n|n.text}[0...10]
    character
  end
    
   # character_1 = self.new
   # character_1.name = "Warrior"
   # character_1.description = "Warrior description"
   # character_1.starting_equipment = "Warrior starting_equipment"
    
   # character_2 = self.new
   # character_2.name = "Knight"
   # character_2.description = "Knight description"
   # character_2.starting_equipment = "Knight starting_equipment"
    
   # [character_1, character_2]
  
end

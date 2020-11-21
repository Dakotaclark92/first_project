require 'open-uri'

class DarkSouls::Scraper

  def self.all
    self.scrape_character
  end
  
  def self.scrape_character
    character = []
    
    character << self.scrape
    
    character
  end
  
  def self.scrape
    Nokogiri::HTML(open("https://darksouls.wikia.com/wiki/Classes_(Dark_Souls)"))
  end
  
  def self.character_name
    
    self.scrape.css("h3 .mw-headline").map{|n|n.text}
    
  end
  
  def self.character_description
    
    self.scrape.css(".floatright + p").map{|n|n.text}[0...10]
    
  end
  
  def self.character_starting_equipment
    
    self.scrape.css("p + ul").map{|n|n.text}[0...10]
    
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

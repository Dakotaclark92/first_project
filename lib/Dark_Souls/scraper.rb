
class Scraper
  
  def get_page
   Nokogigi::HTML(open("http://darksouls.wikia.com/wiki/Classes_(Dark_Souls)"))
  end
  
  def get_characters
    self.get_page.css("h3")
  end
  
  def make_characters
    self.get_classes.each do |post|
      character = Class.new
      character.name = post.css("a").text
      character.starting_equipment = post.css("ul")
      character.description = post.css("p")
    end
    
  
end

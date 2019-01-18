
require 'nokogiri'
require 'open-uri'

class DarkSouls::Scraper

  
  def get_page
    
   Nokogiri::HTML(open("http://darksouls.wikia.com/wiki/Classes_(Dark_Souls)"))
   
    
    
  end
  
  def get_character_name
    self.get_page.css("h3 .mw-headline").map{|n|n.text}[0...10]
  end
  
  def get_character_description
    self.get_page.css(".floatright + p").map{|n|n.text}[0...10]
  end
end


 # name = doc.css("h3 .mw-headline").map{|n|n.text}
  # des = doc.css(".floatright + p").map{|n|n.text}[0...10]
  # starting equ = doc.css("p + ul").map{|n|n.text}[0...10]
  
  
  # (0..9).each{|n|puts n}
require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper
  
  def get_page
    
   doc = Nokogiri::HTML(open("http://darksouls.wikia.com/wiki/Classes_(Dark_Souls)"))
   
      binding.pry
   
  end
  
#name = doc.css("h3 .mw-headline").map{|n|n.text}
#des = doc.css(".floatright + p").map{|n|n.text}[0...10]
#starting equ = doc.css("p + ul").map{|n|n.text}[0...10]
  
  (0..9).each{|n|puts n}
end

Scraper.new.get_page
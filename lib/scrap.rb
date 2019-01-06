  require 'nokogiri'
  require 'open-uri'
  require 'pry'



  class Scrap

   def get_page

     doc = Nokogiri::HTML(open("https://darksouls.wiki.fextralife.com/Items"))

      doc.css(".post").each do |post|
        # item = Item.new
        # item.name = post.css("strong").text
        # item.catagory = post.css("btn").text
      #end
      end
      
      def get_items
       self.get_page.css(".post")
      end
      
      def make_items
        self.get_items.each do |post|
          item = Item.new
          item.name = post.css("strong").text
          item.catagory = post.css("btn").text
        end
      end
      
      
    end
    
    Scrap.new.print_items
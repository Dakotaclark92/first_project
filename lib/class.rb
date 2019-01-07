

class Class
  
  attr_accessor :name, :starting_equipment, :description
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find
    self.all[id-1]
  end
  
  
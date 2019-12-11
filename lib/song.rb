class Song 
  attr_accessor :artist 
  
  @@all = [] 
  
  def intitialize(artist)
    @artist = artist 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 
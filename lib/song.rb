class Song
  attr_accessor :name, :genre, :artist
  
  @@all = []
  
  
  def initialize(name)
  @name = name 
  @@all << self
   
  end

  def self.all 
  @@all  
  end 
    
   def artist_name 
    if self.artist != nil
      self.artist.name
    else nil
  end
  end 
   
    
  
  def atrist
    self.artist.name
  end
  
end
class Song 
  attr_accessor :title, :artist
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def name
    @title
  end
    
  
  def artist_name
    if self.artist == nil
        nil
  else 
    self.artist.name
  end
  end
  
end
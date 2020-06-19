class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.name
    @name
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
  def song_count
    @@all.length
  end
  

    
    

end
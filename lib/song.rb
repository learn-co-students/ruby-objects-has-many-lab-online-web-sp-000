class Song 
  attr_accessor :artist, :song
  
  @@all = []
  
  def initialize(song)
    @song = song
    @@all << self 
  end 
  
  def self.all 
    @@all
  end
  
  def name
    @song 
  end 
  
  def artist_name
    if artist 
      self.artist.name 
    else 
      nil 
    end 
  end 
end

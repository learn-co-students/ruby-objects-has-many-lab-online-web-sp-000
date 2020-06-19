class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(song_name)
    @name = song_name
    @@all << self
  end
  
  def artist_name
    if self.artist.nil?
      nil
    else
      self.artist.name
    end
  end
  
  def self.all 
    @@all
  end
  
end
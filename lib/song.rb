class Song
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def artist
    artist = Artist.new(artist_name)
    self.artist = artist
  end
  
  def artist_name
    if self.artist == true
      artist_name = self.artist.name
      artist_name
    else
      nil
  end
  
end
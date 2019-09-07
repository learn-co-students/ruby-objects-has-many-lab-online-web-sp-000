class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def assign_artist(artist)
    artist = Artist.new(artist)
    @artist = artist
    self.artist = @artist
  end
  
  def artist_name
    if self.artist != nil
      artist_name = self.artist.name
      artist_name
    else
      nil
    end
  end
  
end
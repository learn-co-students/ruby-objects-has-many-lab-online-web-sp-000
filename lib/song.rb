class Song
  
  attr_accessor :name, :artist, :all
  
  @@all = []
  
  def initialize (name)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist
    artist = Artist.new
    artist
  end
  
  def artist_name
    artist.name
  end
  
end
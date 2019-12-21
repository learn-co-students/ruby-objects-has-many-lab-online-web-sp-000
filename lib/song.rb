class Song
  attr_reader :name, :artist

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
  
  def artist_name
    artist.name if artist
  end
end

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

  def artist=(artist)
    @artist = artist
    @artist.songs << self 
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end

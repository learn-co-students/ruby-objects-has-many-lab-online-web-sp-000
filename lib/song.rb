class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    artist.songs << self
    @artist = artist
  end

  def artist_name
    @artist.name if @artist
  end

end

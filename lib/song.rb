class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_artist(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

  def artist_name
    @artist != nil ? @artist.name : nil
  end
end

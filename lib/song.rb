class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
    Artist.song_count_increment
  end

end
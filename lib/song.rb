class Song
  attr_accessor :song, :artist
  @@all = []
  def initialize(song)
    @song = song
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @song
  end

  def artist
    @artist
  end

  def artist_name
    @artist ? self.artist.name : nil
  end

end

class Song
  attr_accessor :song, :artist
  @@all = []

  def initialize(song)
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    artist.name
  end

  def artist_name
    binding.pry
  end
end

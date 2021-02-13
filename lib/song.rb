class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist.name if artist
  end

  def self.all
    @@all
  end
end

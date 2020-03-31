class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end
end

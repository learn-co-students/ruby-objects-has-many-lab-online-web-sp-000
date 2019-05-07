class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
    self.artist.nil? ? nil : self.artist.name
  end

  def name
    @name
  end

  def artist
    @artist
  end
end

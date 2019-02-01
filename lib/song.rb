class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def artist_name
    artist.name if artist
  end
end

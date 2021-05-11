class Song

  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end
end

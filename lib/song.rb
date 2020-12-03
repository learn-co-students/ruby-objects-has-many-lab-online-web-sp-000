class Song
  attr_accessor :name, :artist, :artist_name

@@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist_name
    return nil if !self.artist
    self.artist.name
  end

  def self.all
    @@all
  end

end

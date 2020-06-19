class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist?
    self.artist.is_a?(Artist)
  end

  def artist_name
    if !artist?
      nil
    else
      self.artist.name
    end
  end
end

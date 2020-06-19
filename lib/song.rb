class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist.name
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end

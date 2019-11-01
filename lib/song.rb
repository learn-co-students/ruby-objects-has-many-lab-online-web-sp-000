class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if artist == nil
      nil
    else
      self.artist.name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end

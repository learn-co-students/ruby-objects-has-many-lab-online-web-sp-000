class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    self.class.all << self
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

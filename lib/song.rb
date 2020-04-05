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

  def artist_name
    if self.artist
      self.artist.name
    elsif  self.artist != 0
      nil
    end
  end

end

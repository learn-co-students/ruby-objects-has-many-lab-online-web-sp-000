class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

  def self.all
    @@all
  end

end

class Song 
  attr_accessor :name, :artist, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist == nil ? nil : self.artist.name
  end
end
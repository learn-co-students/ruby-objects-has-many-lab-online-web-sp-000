class Song
  attr_accessor :artist
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    match = nil
    if self.artist !=nil
      match = self.artist.name
    end
      match
  end
  
end
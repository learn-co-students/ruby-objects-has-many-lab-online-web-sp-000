class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist != nil
      self.artist.name
    else
      nil
    end
  end
  
end
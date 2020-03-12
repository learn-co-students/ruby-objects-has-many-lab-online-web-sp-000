class Song
  attr_accessor :name, :artist
  
    @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    save
  end
  
  def self.all 
    @@all
  end
  
  
  def save
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
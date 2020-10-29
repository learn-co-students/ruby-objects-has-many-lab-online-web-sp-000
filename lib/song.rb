class Song
  attr_accessor :name, :artist
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new
    @name
    @@all
  end
  
  def self.all
    @@all
  end
  
  def artist
    @artist
  end
  
  def artist_name
    if self.artist == nil
      p nil
    else
      self.artist = @artist.name
    end
  end
  
end
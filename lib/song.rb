class Song
  
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    save
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end
  
  def name
    @name
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
end
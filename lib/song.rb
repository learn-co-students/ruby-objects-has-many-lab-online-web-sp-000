class Song 
  attr_accessor  :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist=(atrist)
    @artist = artist
    artist.add_song(self) unless songs.artist.include? (self)
  end
  
  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
  
end
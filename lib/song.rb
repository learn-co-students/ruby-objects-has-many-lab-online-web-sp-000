class Song 
  attr_accessor :name, :genre
  @@all = []
  @artist
  
  def initialize(title)
    @name = title
    @@all << self
  end
  
  def artist=(name)
    @artist = name
    name.songs << self
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist
      return @artist.name
    else
      return nil 
    end
  end
  
end
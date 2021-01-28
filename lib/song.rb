class Song 
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = artist
    @genre = genre 
    save
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def artist_name
    if artist 
      self.artist.name  
    else 
      nil 
    end 
  end 
  
end 
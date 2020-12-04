class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    add_song
  end 
  
  def add_song
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name
   @artist.name unless @artist == nil 
  end 
  
end 
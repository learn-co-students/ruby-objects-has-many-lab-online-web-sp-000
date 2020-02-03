class Song 
  attr_accessor :artist, :name  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end 
  def self.find_songs
    @@all 
  end 
  def add_song_by_name(name)
    @name = name 
    @@all << name 
  end 
  def artist_name
    if(self.artist)
      self.artist.name 
    else 
      nil 
    end 
  end 
  def self.song_count
    @@all.length 
  end 
  def self.all 
    @@all 
  end 
end 
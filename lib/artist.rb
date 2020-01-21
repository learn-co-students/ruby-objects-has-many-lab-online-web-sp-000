class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  # I need to define an error called songs 
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song_by_name(name)
    
  end 
end 
class Artist 
  attr_accessor :name 
  
  def initialize(name)
    
    @name = name
    
    
  end 
  
  def songs 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self 
  end 
   
  def add_song_by_name(song)
    song = song.new 
    song.artist = self 
  end 
  
  def song_count 
    @@all  
  end 

end 
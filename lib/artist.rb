class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
  end 
  
  def add_song_by_name(name)
    name = Song.new(name) 
    @songs << name
    name.artist = self
  end 
 
 def self.song_count
    return Song.all.length
  end 
  
  def songs 
    @songs 
  end 
  
end 
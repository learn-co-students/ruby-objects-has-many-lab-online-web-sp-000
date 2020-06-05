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
  
   def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end
  
  def self.song_count 
    Song.all.count
  end
    
    
end